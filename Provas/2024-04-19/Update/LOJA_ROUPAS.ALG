Algoritmo "Loja_Roupas"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a estruturas de decisão (Escolha) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 10/05/2024

// Considere o desenvolvimento de um sistema para uma loja de roupas. No
// sistema deverá ser possível navegar através de um menu para:

// A) Ver os itens e quantidades disponíveis no estoque;
// B) Realizar vendas dos itens disponíveis no estoque;
// C) Fazer o recebimento de uma venda;
// D) Sair do sistema.

// Para o correto desenvolvimento do sistema vocês deverão tomar
// como base que:

// A) Os itens, preços e quantidades disponíveis serão vetores e seus
// valores já estarão predefinidos no sistema.

// B) Para o registro da venda deverá ser informado o nome do cliente,
// telefone, forma de pagamento. Os itens da venda feito deverão
// ser armazenados em um vetor.

// C) Ao fazer o recebimento de uma venda, apresentar todos os dados da
// venda e se o cliente for pagar em dinheiro, conceder desconto de 10%
// sobre o valor total.

// D) Não deverão ser aceitas quantidades negativas de produtos.

// E) Comentem o código fonte, explicando cada trecho e o porquê da escolha
// das estruturas no algoritmo

Tipo // Seção de Registros (Classes.)

    // Registros não permitem o uso de vetores ou outros
    // registros dentro de si.

    produto = Registro

        nome: caractere
        estoque: inteiro
        preco: real

    FimRegistro

    pessoa = Registro

        nome: caractere
        telefone: caractere

    FimRegistro

// Seção de Procedimentos

Procedimento Exibir_Estoque()

    var
    

    
    Inicio
    
    

FimProcedimento

Var // Seção de Declarações das variáveis

    produtos_loja: vetor[1..5] de produto
    
    cliente: pessoa
    
    itens_venda: vetor[1..5] de produto

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("----------------------------------------------------------")

    Escreval("LOJA DE ROUPAS - VESTCODE")

    Escreval("----------------------------------------------------------")

    Escreval("Digite o nome do cliente:")
    Leia(cliente.nome)

    Escreval("Digite o telefone do cliente:")
    Leia(cliente.telefone)

    Escreval("----------------------------------------------------------")

Fimalgoritmo