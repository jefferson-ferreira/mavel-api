*Settings*
Documentation   Suite de Teste do cadastro de personagens na API da Marvel
Resource        ${EXECDIR}/resources/Base.robot
Library         ${EXECDIR}/resources/factories/Thanos.py
Library         ${EXECDIR}/resources/factories/Deadpool.py
Suite Setup     Run Keywords    Set Client Key     jefferson1290@gmail.com
...             AND             Back To The Past

*Test Cases*
Deve cadastrar um personagem

    &{personagem}      Factory Thanos

    ${response}        POST New Character       ${personagem}

    Status Should Be   200                      ${response}

Não deve cadastrar com o mesmo nome

    # Dado que Thanos já exista na aplicação

    ${personagem}       Factory Deadpool

    POST New Character  ${personagem}

    # Quando realizo uma requisição POST para a rota characters

    ${response}         POST New Character      ${personagem}

    # Então o código de retorno deve ser 409

    Status Should Be    409                     ${response}
    #Log To Console          ${response.json()}[error]
    Should Be Equal     ${response.json()}[error]       Character already exists :(