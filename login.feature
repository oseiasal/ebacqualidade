            # language: pt

            Funcionalidade: Login na EBAC-SHOP

            Contexto:
            Dado cliente da EBAC-SHOP irá fazer o login na página

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando usuário digitar o email "exemplo@ebacshop.com.br"
            E senha "123456789"
            Então deve ser redirecionado para a página "Home"

            Esquema do Cenário: Login inválido
            Quando usuário digitar o <email>
            E a <senha>
            Então deve ser exibido uma mensagem de "Login inválido"

            Exemplos:
            | email                    | senha     |
            | "exemlo@ebacshop.com.br" | "1245698" |
            | "exemlo@gmail.com.br"    | "9898989" |
