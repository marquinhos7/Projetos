Dado("que estou na tela principal") do
    expect(@home_page.carga)
end

Quando("seleciono o seguinte menu") do |table|                                  
    @telas = table.rows_hash

    if @telas[:submenu] != ""
        @menu.sub_menu(@telas[:menu], @telas[:submenu])
    else
        @menu.menu_principal(@telas[:menu])
    end
end                                                           

Então("sou redirecionado para tela com sucesso") do 
    
end