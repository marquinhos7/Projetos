class HomePage
    include Capybara::DSL

    def carga
        within('#ultima_importacao') do
            return find('#lblDataUltimaCarga')
        end
    end
end