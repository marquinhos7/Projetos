#language: pt

Funcionalidade: Login no Sistema

    Para que eu possa verificar/cadastrar parametrizações no MainFrame
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu LC-Number e Senha

Contexto: Página de Login

    Dado que estou na página de Login

    @logar @logout
    Cenário: Login do Usuário

        Quando faço login com
            | usuario | ts02150    |
            | senha   | SgiMtc@004 |
        Então sou autenticado com sucesso

    Esquema do Cenário: Tentativa de Login

        Quando faço login com
            | usuario | <usuario> |
            | senha   | <senha>   |
        Então devo ver a seguinte mensagem de "<alerta>"

        Exemplos:
        | usuario | senha  | alerta                                        |
        | nexiste | teste@ | Usuário inválido                              |
        |         | teste@ | The sAMAccountName= search filter is invalid. |
        | ts02150 | sdfs   | Senha inválida                                |
        | ts02150 |        | Senha não preenchida                          |
        |         |        | The sAMAccountName= search filter is invalid. |