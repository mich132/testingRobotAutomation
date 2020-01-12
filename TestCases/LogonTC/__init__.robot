*** Settings ***
Suite Setup  Before each Test Suite1
Suite Teardown  After each Test Suite1
*** Variables ***

*** Keywords ***

Before each Test Suite1
    Log  Test Suite Started

After each Test Suite1
    Log  Test Suite Ended