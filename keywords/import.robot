*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Library         DebugLibrary
Library         String
Library         Collections
Library         BuiltIn
Library         RequestsLibrary
Library         JSONLibrary
Library         DateTime

#Variables
Variables       ../resources/testdata/testdata.yaml
Variables       ../resources/setting/setting.yaml

#Common
Resource        common.robot

#Page
Resource        ./pages/homepage_page.robot
Resource        ./pages/login_page.robot
Resource        ./pages/register_page.robot
Resource        ./pages/my_account_page.robot
Resource        ./pages/product_detail_page.robot
Resource        ./pages/cart_page.robot
Resource        ./pages/payment_method_page.robot
Resource        ./pages/payment_detail_page.robot
Resource        ./pages/payment_complete_page.robot

#Locator
Resource        ./locators/homepage_locator.robot
Resource        ./locators/login_locator.robot
Resource        ./locators/register_locator.robot
Resource        ./locators/my_account_locator.robot
Resource        ./locators/product_detail_locator.robot
Resource        ./locators/cart_locator.robot
Resource        ./locators/payment_method_locator.robot
Resource        ./locators/payment_detail_locator.robot
Resource        ./locators/payment_complete_locator.robot

#Feature
Resource        ./features/login_feature.robot
Resource        ./features/register_feature.robot
Resource        ./features/product_detail_feature.robot
Resource        ./features/cart_feature.robot