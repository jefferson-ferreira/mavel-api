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