*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resources1.robot
Library  ../../ExternalKeywords/Locator.py
Documentation  Ths File having testcasee of xxxx
#Test Timeout  300s
Test Setup  Start Browser and Maximize2
Test Teardown  Close Browser Window
Suite Teardown  After Each Test Suite
Suite Setup  Before Each Test Suite
Default Tags  DFLT
Force Tags  ALL_TC


*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    [Tags]  Smoke
    [Documentation]  This test case is to check registration functionality of application
    [Timeout]  2mins 50s  Failed to execute first test case
    #[Setup]  Start Browser and Maximize2
    #[Teardown]  Close Browser Window
    #${Res}=  Start Browser and Maximize  ${URL}  ${Browser}
    #Log  ${Res}
    #Open Browser  ${URL}  ${Browser}
    #Maximize Browser Window
    ${username_field}=  Read Element Locator  Registration.username_textbox_name
    Input Text  name:${username_field}  TestingWorld
    #Enter Username Password Email Argument  blabla  testingworld@gmail.com  123456
    #Set Selenium Speed  2seconds
    Clear Element Text  name:fld_username
    Select Radio Button  add_type  office
    Select Checkbox  name:terms
    #Click Link xpath://a[text()='Read Detail']
    Select From List By Index  name:sex  2
    Select From List By Value  name:sex  1
    Select From List By Label  name:sex  Female
    #Close Browser

Robot Next Test Case
    #[Setup]  Start Browser and Maximize2
    #[Teardown]  Close Browser Window
    Select Radio Button  add_type  office

*** Keywords ***
Enter Username Password Email
    Input Text  name:fld_username  TestingWorld
    Input Text  xpath://input[@name='fld_email']  blabla@gmail.com
    Input Text  name:fld_password  12345678

Enter Username Password Email Argument
    [Arguments]  ${username}  ${email}  ${password}
    Input Text  name:${username_field}  ${username}
    Input Text  xpath://input[@name='fld_email']  ${email}
    Input Text  name:fld_password  ${password}

Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [return]  ${result}



