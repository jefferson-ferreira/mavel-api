*Settings*
Documentation   Suite de Teste de busca de personagens na API da Marvel
Resource        ${EXECDIR}/resources/Base.robot
Library         ${EXECDIR}/resources/factories/Guardians.py
Suite Setup     Super Setup     jefferson1290@gmail.com

*Test Cases*

Deve buscar um personagem pelo ID

    ${personagem}       factory Falcao
    ${falcao}           POST New Character          ${personagem}
    ${falcao_id}        Set Variable                ${falcao.json()}[_id]

    ${response}         GET Character By ID         ${falcao_id}

    Status Should Be    200                         ${response}
    Should Be Equal     ${falcao.json()}[name]      ${personagem}[name]
    Should Be Equal     ${falcao.json()}[aliases]   ${personagem}[aliases]
    Should Be Equal     ${falcao.json()}[age]       ${personagem}[age]
    Should Be Equal     ${falcao.json()}[team]      ${personagem}[team]
    Should Be Equal     ${falcao.json()}[active]    ${personagem}[active]    

