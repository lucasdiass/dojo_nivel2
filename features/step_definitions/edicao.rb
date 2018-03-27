
Dado(/^Validar criação de conta$/) do
  step 'Navego para tela de cadastro'
  step 'Preencho o formulario'
end

  Quando(/^pesquiso por conta$/) do

    @editar.salesedicao.click 
    @editar.accountsedicao.click 
    sleep(5)

    #clicando em filtro e pesquisando pelo nome do cenario cadastro 
     # (se for exibido advanced filter, então ele usa logica abaixo para clicar no quick fiter)
    @editar.filtroedicao.first.click
    if have_content @editar.cadastro_filtrocorreto == false then 
      @editar.cadastro_filtrocorreto.click 
      @editar.filtro_inserirnome.set $new_cadastro['name']
    else    
      @editar.filtro_inserirnome.set $new_cadastro['name'] 

end 
  @editar.botao_filtro.click

end 

  Quando(/^realizo edição$/) do


        #Clicando botão alterar dados
        @editar.alterar_dados.click 

        #Alterando dados

        name = "#{Faker::DragonBall.character} #{Faker::Name.last_name}"
        $new_editar = {
            'name' => name,
            'telefone' => Faker::PhoneNumber.cell_phone,
            'fax' => Faker::PhoneNumber.cell_phone,
            'email' => Faker::Internet.email(name),  
            'rua' => Faker::Address.street_name,  
            'cidade' => Faker::Address.city,  
            'descricao' => Faker::BossaNova.song
          }
        
        #Apos mapeio da faker, inserindo novos dados nos campos
        @cadastrar.cadastro_name.set $new_editar['name']
        @cadastrar.cadastro_phone.set $new_editar['telefone']
        @cadastrar.cadastro_fax.set $new_editar['fax']
        @cadastrar.cadastro_email.set $new_editar['email']
        @cadastrar.cadastro_rua.set $new_editar['rua']
        @cadastrar.cadastro_cidade.set $new_editar['cidade']
        @cadastrar.cadastro_desc.set $new_editar['descricao']
        

        #clicando em salvar cadastro
        @cadastrar.cadastro_btnsave.first.click
  end



  
  Então(/^conta é editada com sucesso$/) do
    expect(@cadastrar.cadastro_name.text).to have_content $new_editar['name']
    expect(@verificar.verificacao_phone.text).to have_content $new_editar['telefone']
    expect(@verificar.verificacao_fax.text).to have_content $new_editar['fax']
    expect(@verificar.verificacao_email.text).to have_content $new_editar['email']
    expect(@verificar.verificacao_rua.text).to have_content $new_editar['rua' + 'cidade']
    expect(@verificar.verificacao_desc.text).to have_content $new_editar['descricao']
  end
