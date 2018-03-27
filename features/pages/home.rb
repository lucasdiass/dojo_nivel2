class Home < SitePrism::Page

    set_url '/index.php'

    element :nome, '#user_name'
    element :senha, '#username_password'
    element :user_botao, '#bigbutton' 

    def do_login(user)
        self.nome.set user['nome'] 
        self.senha.set user['senha']
        self.user_botao.click

    end
end 



class Cadastro < SitePrism::Page

    element :mnucreate_master, '#quickcreatetop' 
    element :mnucreateaccount, :xpath, '//*[@id="quickcreatetop"]/ul/li[1]/a'
    element :cadastro_name, '#name'
    element :cadastro_phone, '#phone_office'
    element :cadastro_fax,  '#phone_fax'
    element :cadastro_email,  '#Accounts0emailAddress0'
    element :cadastro_rua, '#billing_address_street'
    element :cadastro_cidade, '#billing_address_city'
    element :cadastro_desc, '#description'
    elements :cadastro_btnsave, '#SAVE' 
    element :cadastro_verifica, '.module-title-text' 


end 


class Edicao < SitePrism::Page

    element :salesedicao, '#grouptab_0' 
    element :accountsedicao, '#moduleTab_6_Accounts' 
    elements :filtroedicao, 'a.glyphicon.glyphicon-filter.parent-dropdown-handler'
    element :filtro_inserirnome, '#name_basic'
    element :botao_filtro, '#search_form_submit'
    elements :validar_filtro, '.inlineEdit'
    element :alterar_dados, '.suitepicon.suitepicon-action-edit'
    elements :alterar_selecao, '.glyphicon.bootstrap-checkbox.initialized-checkbox.glyphicon-unchecked'
    element :confirm_selecao, '#button_select_all_top'
    elements :selec_acao, '.selected-actions-label.hidden-desktop'
    element :delete_acao, 'a#delete_listview_top.parent-dropdown-action-handler'
    element :cadastro_filtroincorreto, '#search_form_submit_advanced'
    element :cadastro_filtrocorreto, '.searchTabHandler.basic' 
end


class Verificacao < SitePrism::Page 

    element :verificacao_phone, 'div[field=phone_office]' 
    element :verificacao_fax, 'div[field=phone_fax]' 
    element :verificacao_email, '.email-link'
    element :verificacao_rua, 'div[field=billing_address_street'
    element :verificacao_desc, 'div[field=description]'
    element :verficacao_exclusao, '.msg'
end 

