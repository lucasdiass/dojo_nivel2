
Before do 

    @login = Home.new 
    @cadastrar = Cadastro.new
    @editar = Edicao.new 
    @verificar = Verificacao.new 
end 

#Configurando login no sistema pelo hooks
Before ('@login_usuario') do
user = {
    'nome' => 'will',
    'senha' => 'will' 
}

@login.load 
@login.do_login(user)

end 