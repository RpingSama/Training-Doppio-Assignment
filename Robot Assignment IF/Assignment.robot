*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${score_from_student}    0
*** Keywords ***
Gradding
    [Arguments]    ${score}=0
    IF  ${score} >= 90
        Log To Console    Get A
    ELSE IF    ${score} >= 80 and ${score} <= 90
        Log To Console    Get B
    ELSE IF    ${score} >= 70 and ${score} <= 80
        Log To Console    Get C
    ELSE IF    ${score} >= 60 and ${score} <= 70
        Log To Console    Get D
    ELSE
        Log To Console    Get F
    END
*** Test Cases ***
TC-001 Gradding
    Gradding    ${score_from_student} 