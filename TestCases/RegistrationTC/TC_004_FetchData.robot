*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resources1.robot
Documentation  Ths File having testcasee of xxxx
#Test Timeout  300s
#Test Setup  Start Browser and Maximize2
#Test Teardown  Close Browser Window
#Suite Setup  Before Each Test Suite
#Suite Teardown  After Each Test Suite
Force Tags  ALL_TC

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    #Create Folder at Runtime  HELLO1234  Testing
    Concatenate Username and Password  blablabla  123456
    Open Browser  ${URL}  ${Browser}
    Input Text  name:fld_username  TestingWorld
    Input Text  xpath://input[@name='fld_email']  blabla@gmail.com
    Input Text  name:fld_password  12345678
    ${Title}=  Get Title
    Log  ${Title}
    ${Speed}=  Get Selenium Speed
    Log  ${Speed}
    ${Value}=  Get Value  xpath://input[@type='submit']
    Log  ${Value}
    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    Log  ${Text}
    Select From List By Index  name:sex  1
    ${Val}=  Get Selected List Value  name:sex
    Log  ${Val}
    ${Txt_Label}=  Get Selected List Label  name:sex
    Log  ${Txt_Label}
    ${AllLabels}=  Get List Items  name:sex
    Log  ${AllLabels}
    ${ActualURL}=  Get Location
    Log  ${ActualURL}
    ${PageHTML}=  Get Source
    Log  ${PageHTML}
    ${Attr}=  Get Element Attribute  name:fld_username  class
    Log  ${Attr}
    ${cnt}=  Get Element Count  class:field
    log  ${cnt}
