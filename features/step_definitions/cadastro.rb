

Dado(/^que eu acesse o site Demo$/) do


 @login.load

 
end

Quando(/^Navego para tela de cadastro$/) do
  sleep(4)
  @cadastrar.mnucreate_master.click
  @cadastrar.mnucreateaccount.click

end

Quando(/^Preencho o formulario$/) do

  name = "#{Faker::DragonBall.character} #{Faker::Name.last_name}"
  $new_cadastro = {
      'name' => name,
      'telefone' => Faker::PhoneNumber.cell_phone,
      'fax' => Faker::PhoneNumber.cell_phone,
      'email' => Faker::Internet.email(name),  
      'rua' => Faker::Address.street_name,  
      'cidade' => Faker::Address.city,  
      'descricao' => Faker::BossaNova.song
    }
  
  #Apos mapeio da faker, inserindo dados nos campos
  @cadastrar.cadastro_name.set $new_cadastro['name']
  @cadastrar.cadastro_phone.set $new_cadastro['telefone']
  @cadastrar.cadastro_fax.set $new_cadastro['fax']
  @cadastrar.cadastro_email.set $new_cadastro['email']
  @cadastrar.cadastro_rua.set $new_cadastro['rua']
  @cadastrar.cadastro_cidade.set $new_cadastro['cidade']
  @cadastrar.cadastro_desc.set $new_cadastro['descricao']
  @cadastrar.cadastro_btnsave.first.click

end



Então(/^usuário é cadastrado com sucesso$/) do

  #FComparando campos para validar se registros batem
  expect(@cadastrar.cadastro_name.text).to have_content $new_cadastro['name']
  expect(@verificar.verificacao_phone.text).to have_content $new_cadastro['telefone']
  expect(@verificar.verificacao_fax.text).to have_content $new_cadastro['fax']
  expect(@verificar.verificacao_email.text).to have_content $new_cadastro['email']
  expect(@verificar.verificacao_rua.text).to have_content $new_cadastro['rua' + 'cidade']
  expect(@verificar.verificacao_desc.text).to have_content $new_cadastro['descricao']
end 

