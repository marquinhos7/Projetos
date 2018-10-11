class Cabecalho
    include Capybara::DSL

    def menu_usuario
        within('#opcoesGlobais') do
            return find('#ctl00_usuario')
        end
    end

    def sair
        menu_usuario.click
        click_link 'Sair'
    end
end

class Menu
    include Capybara::DSL

    def menu_principal(menu)
        within('.menu') do
            click_link menu
        end
    end

    def sub_menu(menu, submenu)
        menu_principal(menu)

        within('.submenu') do
            click_link submenu
        end
    end
end

class ArvoreProcessos
    include Capybara::DSL

    def acessa_tela(pasta, subpasta, tela)
        within('#painelEsquerda') do
            find(pasta).click
            find(subpasta).click
            find(tela).click
        end
    end

end