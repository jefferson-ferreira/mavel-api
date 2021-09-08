*Settings*
Documentation       Ações da rota /characters


*Keywords*
POST New Character
    [Arguments]     ${playload}

    ${response}         POST
    ...                 ${BASE_URI}/characters
    ...                 json=${playload}
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    [return]            ${response}

GET Character By ID
    [Arguments]         ${character_id}

    ${response}         GET
    ...                 ${BASE_URI}/characters/${character_id}
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    [return]            ${response}

DELETE Character By ID
    [Arguments]         ${character_id}

    ${response}         DELETE
    ...                 ${BASE_URI}/characters/${character_id}
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    [return]            ${response}