*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/variables.robot

*** Keywords ***
Open Flipkart website
    Open Browser  ${url_books}  ${brows}
    Maximize Browser Window
    sleep  2s
    Verify WebPage title  ${Expected_homePage}
    Log to Console  Step1

Enter mobile number and password details
    ${abc} =  Get Text  ${Login_id}
    Log to Console  ${abc}
    sleep  4s
    Input Text  ${Login_id}  ${Given_Number}
    Input Password  ${password}  ${Given_password}
    sleep  2s
    Click Element  ${submit}
    Log to Console  Step2

#If loop func
    #${Result} =  Locator Should Match X Times  ${Xpath}  2
    #Log to Console  ${Result}
    #Run Keyword If  '${RESULT}'=='None'  Clear the contents in the cart
    #${c} =   Get Element Count   ${Xpath}
    #Log to Console  ${c}
    #Run Keyword If   ${c}>0  Clear the contents in the cart
    #${present}=  Run Keyword And Return Status    Element Should Be Visible   ${Xpath}
    #Log to Console  ${present}
    #Run Keyword If    ${present}    Clear the contents in the cart
    #Run Keyword If    ${present}    Clear the contents in the cart

Clear the contents in the cart
    sleep  2s
    Click Element  ${home_screen_cart}
    sleep  2s
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${cart_empty}
    Run Keyword If    '${present}'=='False'    Remove from Cart
    
Remove from Cart    
    Wait Until Page Contains  ${expeted_product}
    Click Element  ${remove_button}
    sleep  2s
    Click Element  ${confirm_remove}

Move to Home Page
    sleep  2s
    Click Element  ${home_button}

Navigate to Category "Electronics"
    sleep  2s
    Mouse Over  ${Electronics}
    sleep  2s
    Scroll Element Into View  ${smart_wearables}
    Click Element  ${smart_wearables}
    Log to Console  Step3

Choose Product
    sleep  5s
    Click Element  ${view_all}
    sleep  5s
    Scroll Element Into View  ${product}
    sleep  5s
    Click Element  ${product}
    Log to Console  Step4

Add to Cart
    sleep  5s
    Select Window  ${Expected_window}
    sleep  5s
    ${abc} =  Get Text  ${pincode}
    Log to Console  ${abc}
    Press Keys  ${pincode}  ${Expected_pincode}
    Click Element  ${check_pincode}
    sleep  5s
    Click Element  ${add_to_cart}
    Log to Console  Step5

Navigate to home screen and verify product in cart
    sleep  3s
    Click Element  ${home_button}
    sleep  3s
    Click Element  ${home_screen_cart}
    sleep  5s
    Verify if the added item is available in the cart  ${expeted_product}

Verify if the added item is available in the cart
    [Arguments]  ${apple_watch}
    Wait Until Page Contains  ${apple_watch}
    Log to Console  ${apple_watch}
    Log to Console  Pass you can party!!


Verify WebPage title
    [Arguments]  ${title_name}
    Wait Until Page Contains  ${title_name}
    Log to Console  ${title_name}
    Log to Console  Pass!!