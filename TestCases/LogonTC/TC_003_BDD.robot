*** Settings ***
Resource  ../../Resources/Resources1.robot
*** Variables ***
*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize2
    #When Create Folder at Runtime  ABCD  XYZ
    Then Concatenate Username and Password  3232  23232

