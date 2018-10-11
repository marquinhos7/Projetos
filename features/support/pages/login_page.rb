class LoginPage
    include Capybara::DSL

    def acessar
        visit '/'
    end

    def faz_login(usuario, senha)
        find('#txtUsuario').set usuario
        find('#txtSenha').set senha

        click_button 'Login'
    end

    def msg_alerta
        within('#conteudo') do
            return find('#usuarioInvalido').text
        end
    end
end