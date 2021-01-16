*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/variables.robot


*** Test Cases ***
User Should be able to book an electronic device on flipkart
    Open Flipkart website
    Enter mobile number and password details
    Clear the contents in the cart
    Move to Home Page
    Navigate to Category "Electronics"
    Choose Product
    Add to Cart
    Navigate to home screen and verify product in cart
    