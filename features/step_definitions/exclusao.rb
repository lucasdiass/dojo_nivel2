
Dado(/^Validar criação de usuário$/) do
  step 'Navego para tela de cadastro'
  step 'Preencho o formulario'
end

Quando(/^filtro usuário a ser excluido$/) do
    @editar.salesedicao.click 
    @editar.accountsedicao.click 
    sleep(5)

    #clicando em filtro e pesquisando pelo nome do cenario cadastro
    @editar.filtroedicao.first.click
    if have_content @editar.cadastro_filtrocorreto == false then 
      @editar.cadastro_filtrocorreto.click 
      @editar.filtro_inserirnome.set $new_cadastro['name']
    else    
      @editar.filtro_inserirnome.set $new_cadastro['name'] 
  end
  @editar.botao_filtro.click
end 


  
  Quando(/^realizo exclusão de usuario$/) do
    #fazendo ação de excluir usuário
    @editar.alterar_selecao.first.click
    @editar.confirm_selecao.click 
    @editar.selec_acao.first.click 
    @editar.delete_acao.click
    page.driver.browser.switch_to.alert.accept 
  end
  
  Então(/^usuário é excluido com sucesso$/) do
    #Validando que texto tem o nome inserido na variavel global $new_cadastro
    @verificar.verficacao_exclusao.has_content?($new_cadastro['name'].to_s)
  end