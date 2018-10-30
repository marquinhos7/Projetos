Before do
    @login_page = LoginPage.new
    @cabecalho = Cabecalho.new
    @home_page = HomePage.new
    @menu = Menu.new
    @ajuda = Ajuda.new
    @arvore_processos = ArvoreProcessos.new

    page.current_window.resize_to(1440, 900)
end

Before('@login') do
    @login_page.acessar
    @login_page.faz_login('ts02150', 'Fnis@2018')
end

After('@logout') do
    @cabecalho.sair
end

After do |scenario|
    tira_print(scenario)
end

def tira_print(scenario)
    nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome = nome.tr(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print da Execução =)')
end

def wait_until_css(element, time_out = Capybara.default_max_wait_time)
    found = true

    while found == true
        sleep 1
        raise Timeout::Error, 'Time out of wait until css ' + element if time_out.zero?
        found = page.has_css?(element)
        time_out -= 1
    end
end