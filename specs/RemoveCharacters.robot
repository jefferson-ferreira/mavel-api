*Settings*
Documentation   Suite de Teste de excluir personagens na API da Marvel
Resource        ${EXECDIR}/resources/Base.robot
Library         ${EXECDIR}/resources/factories/Guardians.py
Suite Setup     Super Setup     jefferson1290@gmail.com

*Test Cases*

Deve excluir um personagem pelo ID

    ${personagem}       factory hulk
    ${hulk}             POST New Character          ${personagem}
    ${hulk_id}          Set Variable                ${hulk.json()}[_id]

    ${response}         DELETE Character By ID      ${hulk_id}

    Status Should Be    204                         ${response}

    ${response2}        GET Character By ID         ${hulk_id}

    Status Should Be    404                         ${response2}

Não deve excluir um personagem pelo Id

    ${personagem_id}       Get Unique Id
    ${response}            DELETE Character By ID   ${personagem_id}

    Status Should Be       404                      ${response}
