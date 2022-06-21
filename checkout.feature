            # language: pt

            Funcionalidade: Tela de cadastro - Checkout
            O usuário ira fazer o cadastro dentro da EBAC-SHOP
            para poder acessar o site

            Contexto:
            Dado cliente da EBAC-SHOP está na página de cadastro

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando o usuário clicar em "finalizar compra"
            Se os campos marcados com "*" estiverem sem preenchimento do usuário
            Então uma mensagem de alerta deve aparecer para o usuário
            E o foco do mouse deve ir para este campo

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando o usuário digitar <email_invalido> em "email"
            Então o sistema deve exibir "E-mail invalido"

            Exemplos:
            | email_invalido       |
            | "adasd@.com"         |
            | "www.exemplo.com.br" |
            | "@gmail.com.br"      |
            | "gmail.com.br"       |


