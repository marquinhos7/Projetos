Dado("que estou na página de Login") do
    visit '/'
end
  
Quando("faço login com") do |table|
    @usuario = table.rows_hash
    @login_page.faz_login(@usuario[:usuario], @usuario[:senha])
end
  
Então("sou autenticado com sucesso") do
    expect(@cabecalho.menu_usuario.text).to eql @usuario[:usuario]
end

Então("devo ver a seguinte mensagem de {string}") do |mensagem_alerta|                      
    expect(@login_page.msg_alerta).to eql mensagem_alerta
end