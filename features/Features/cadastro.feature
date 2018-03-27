#language: pt
#utf-8

@cadastro @login_usuario
Funcionalidade: Validar criação de usuário
Eu como cliente
Quero acessar o site suiteondemand
Para me cadastrar 

Cenário: Validar criação de conta
Dado que eu acesse o site Demo
Quando Navego para tela de cadastro
E Preencho o formulario
    #   | name        | lucas            |      
    #   | telefone    | 11111111111      |
    #   | fax         | 84281421421      |
    #   | email       | Mttest@gmail.com |
    #   | rua         | XINGU            |
    #   | cidade      | BARUERI          |
    #   | descricao   | TESTANDO 123456  |

Então usuário é cadastrado com sucesso