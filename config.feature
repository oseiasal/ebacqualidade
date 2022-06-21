# language: pt

Funcionalidade: Configurar produto
Usuário irá configurar o produto de acordo com
as cores, quantidades e tamanhos que ele deseja

Contexto:
Dado cliente da EBAC-SHOP deseja adicionar produto ao carrinho

Cenário: Selecionando as preferências do produto
Quando o cliente abrir a página do produto
E selecionar "tamanho", "cor" e "quantidade"
E clicar em "comprar"
Então o produto selecionado deve ir para o "carrinho"

Cenário: Tamanho, core e quantidade devem ser obrigatórios
Quando quando o cliente clicar em "comprar"
Se não tiver selecionado as opções obrigatórias de tamanho,
cor e quantidade
Então deve ser exibido um aviso para que o cliente selecione essas opções

Cenário: Não pode haver mais do que 10 produtos selecionados
Quando o cliente adicionar 10 produtos
Então o botão de "+" deve ser desabilitado para
o cliente não conseguir adicionar mais produtos

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando o cliente clicar no botão "limpar"
Então a quantidade, as cores e o tamanho do produto devem ser resetados