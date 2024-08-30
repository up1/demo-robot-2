*** Settings ***
Library           SeleniumLibrary
Test Teardown     Close Browser

*** Test Cases ***
Flow login
    Open Browser    https://efiling.rd.go.th/rd-cms/    chrome
    ...  remote_url=http://157.230.41.194:4444/wd/hub
    Maximize Browser Window
    Capture Page Screenshot
    Wait Until Page Contains Element    id=exampleModalLabel
    Click Link   รายละเอียด

    Switch Window	NEW
    Wait Until Page Contains Element    xpath:/html/body/section/section/div/div/div[2]/h4[3]
    Wait Until Element Contains   xpath:/html/body/section/section/div/div/div[2]/h4[3]   ช่วงเวลาการให้บริการของแต่ละช่องทาง

    Switch Window	MAIN
    Click Element   xpath://*[@id="announceModal"]/div/div/div[1]/button
    Click Element   xpath://*[@id="top"]/div/div[2]/button[1]

Flow login 2
    Open Browser    https://efiling.rd.go.th/rd-cms/    chrome
    ...  remote_url=http://157.230.41.194:4444/wd/hub
    Maximize Browser Window
    Capture Page Screenshot
    Wait Until Page Contains Element    id=exampleModalLabel
    Click Link   รายละเอียด

    Switch Window	NEW
    Wait Until Page Contains Element    xpath:/html/body/section/section/div/div/div[2]/h4[3]
    Wait Until Element Contains   xpath:/html/body/section/section/div/div/div[2]/h4[3]   ช่วงเวลาการให้บริการของแต่ละช่องทาง

    Switch Window	MAIN
    Click Element   xpath://*[@id="announceModal"]/div/div/div[1]/button
    Click Element   xpath://*[@id="top"]/div/div[2]/button[1]
