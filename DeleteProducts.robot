***Settings***
Documentation  Test For Deleting Products in Digikala
Library  SeleniumLibrary

Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Variables.robot

Force Tags  Deleting
Test Setup  CommonFunctionallity.first operations
Test Teardown  CommonFunctionallity.last operations


***Test Cases***
Deleting Product in Digikala
    [Documentation]  this test verifies deleting products from cart

    LoginFunctionallity.main operations
    Buying Operations
    Deleting Operations


***Keywords***
Deleting Operations
    Click Element  //div[text()='سبد خرید']
    Wait Until Element Is Visible  (//button[@data-cro-id="cart-delete-item-right"])[2]
    Click Element  (//button[@data-cro-id="cart-delete-item-right"])[2]
    Page Should Contain  سبد خرید شما خالی است!
    Capture Page Screenshot
