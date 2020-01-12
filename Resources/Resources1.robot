*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***
# {URL}  https://www.thetestingworld.com/testings
# ${Browser}  Chrome

*** Keywords ***
Start Browser and Maximize
    [Documentation]  This key word for bla bla bla
    [Arguments]  ${UserURL}  ${InputBrowser}
    [Timeout]  2mins 50s
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    #Log  ${Title}
    [return]  ${Title}

Start Browser and Maximize2
    Open Browser  https://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=  Get Title
    log  ${Title}
    Close Browser

Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suitee

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    Log  Task done successfully

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_value  ${username}  ${password}
    Log  ${resultval}