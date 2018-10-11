class Ajuda
    include Capybara::DSL
    require 'faker'

    def gera_nome(sexo)
        if sexo == 1
            nome = Faker::Name.male_first_name
        elsif sexo == 2
            nome = Faker::Name.female_first_name
        end
    end

    def gera_sobrenome
        sobrenome = Faker::Name.last_name
    end

    def gera_numero(caracteres)
        numero = Faker::Number.number(caracteres)
    end

    def gera_decimal(caracteres)
        numero = Faker::Number.decimal(caracteres)
    end

    def gera_crypto
        crypto = Faker::Crypto.md5
    end
end