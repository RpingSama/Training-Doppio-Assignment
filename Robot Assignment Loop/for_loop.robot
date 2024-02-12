*** Settings ***
Library    SeleniumLibrary
*** Variables ***
@{hero}    ironman    batman    captain    superman    hulk    shazam    thor    flash    blackwidow    wonder woman    hawkeye
*** Keywords ***
Hero Loop
    ${i}    Set Variable    0
    FOR    ${element}    IN    @{hero}
        Exit For Loop If    "${element}" == "blackwidow"
        ${number}    Evaluate    ${i}%2
        IF  ${number} == 0
            Log to console    ${element} 
        END
        ${i}    Evaluate    ${i} + 1
    END
*** Test Cases ***
TC_001 Hero Loop
    Hero Loop