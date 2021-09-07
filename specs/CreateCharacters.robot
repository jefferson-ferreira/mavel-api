*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel
Resource        ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Thanos.py

*Test Cases*
Deve cadastrar um personagem

    Set Client Key     jefferson1290@gmail.com

    &{personagem}       Factory Thanos

    ${response}        POST
    ...                 ${BASE_URI}/characters
    ...                 json=${personagem}
    ...                 headers=${headers}

    Status Should Be        200      ${response}