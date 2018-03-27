#language: pt
#utf-8

@exclusao @login_usuario
Funcionalidade: Validar exclusao de usuário
Eu como cliente
Quero acessar o site suiteondemand
Para me cadastrar 

Contexto: Dado que eu tenha usuário cadastrado
Dado Validar criação de usuário 

Cenário: Validar exclusao de conta
Dado que eu acesse o site Demo
Quando filtro usuário a ser excluido
E realizo exclusão de usuario
Então usuário é excluido com sucesso
