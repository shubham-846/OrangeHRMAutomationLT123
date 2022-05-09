*** Settings ***
Documentation      this suite will handle valid credential
...     test - TC_OH_2
Resource     ../Resource/CommonFunctionality.resource

Test Setup    Launch Browser
Test Teardown    Close Browser

*** Test Cases ***
Invalid Credential Test
    Input Text    id=txtUsername    john
    Input Password    id=txtPassword    john123
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=Invalid credential
    #