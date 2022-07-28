*** Settings ***

Library    SeleniumLibrary

Suite Setup    Log    I am inside test suite setup         
Suite Teardown    Log    I am inside test suite Teardown
Test Setup    Log    I am inside test setup    
Test Teardown    Log    I am inside test teardown    
   


*** Test Cases *** 
SecondSeleniumTest
    Log    Hello world...
 
   
# FirstSeleniumTest
    
    # Open Browser    https://www.google.com/    gc
    # Set Browser Implicit Wait    5 
        
    # Press Keys    name=q    Bibin    ENTER 
    # Sleep    2     
    # Close Browser
    # Log    Test Completed
    


# SampleLoginTest
    # [Documentation]     this is a sample login test
    # Open Browser    ${url}    gc
    # Set Browser Implicit Wait    2
    # Loginob
    # Click Element    id=welcome  
    # Sleep    1    
    # Click Element    link=Logout     
    # Close Browser 
    # Log    Test Completed
    # Log    this test was completed by %{username}
    
*** Variables ***
${url}       https://opensource-demo.orangehrmlive.com/
@{credentials}    Admin    admin123
&{loginpairs}    username=Admin    password=admin123

*** Keywords ***

Loginob
    Input Text    id=txtUsername    ${credentials}[0]
    Input Password    id=txtPassword      ${loginpairs}[password]
    Click Button    id=btnLogin   

