#language: pt

Funcionalidade: Navegar no Sistema

    Para que eu possa verificar se o sistema está funcionando
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu LC-Number e Senha e navegar entre as telas

Contexto: Navegar em todas as telas

    Dado que estou na tela principal

    @login @temp
    Esquema do Cenário: Menus

        Quando seleciono o seguinte menu
            | menu    | <menu>    |
            | submenu | <submenu> |
        Então sou redirecionado para tela com sucesso

        Exemplos:
        | menu           | submenu           |
        | Parametrização | Manutenção        |
        # | Parametrização | Cópia             |
        # | Parametrização | Inclusão          |
        # | Parametrização | Exclusão          |
        # | Parametrização | Consultar         |
        # | Parametrização | Importar          |
        # | Parametrização | Aprovar           |
        # | Processos      |                   |
        # | Carga          | Não-Conformidades |
        # | Alterar Senha  |                   |

