*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Select Product from Search Results
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart


Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  signInSubmit