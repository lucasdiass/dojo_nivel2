#language: pt
#utf-8

@edicao @login_usuario
Funcionalidade: Validar edição de usuário
Eu como cliente
Quero acessar o site suiteondemand
Para realizar edição do cadastro

Contexto: Dado que eu tenha usuário cadastrado
Dado Validar criação de conta 

Cenário: Validar edição de cadastro
Dado que eu acesse o site Demo
Quando pesquiso por conta
E realizo edição 
    #   | name        | lucas            |      
    #   | telefone    | 11111111111      |
    #   | fax         | 84281421421      |
    #   | email       | Mttest@gmail.com |
    #   | rua         | XINGU            |
    #   | cidade      | BARUERI          |
    #   | descricao   | TESTANDO 123456  |
Então conta é editada com sucesso
