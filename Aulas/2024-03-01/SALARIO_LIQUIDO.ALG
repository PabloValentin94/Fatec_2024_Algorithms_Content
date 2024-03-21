Algoritmo "Salario_Liquido"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Aqui você descreve o que o programa faz! (função)
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

// De acordo com a legislação CLT, é descontado de funionários o valor do
// INSS e do IRRF. Faça um algoritmo que receba o salário bruto de uma
// pessoa e, a partir desses impostos, calcule seu salário líquido.

// Cálculo - INSS:

// www.contabilizei.com.br/contabilidade-online/desconto-inss/
// www.youtube.com/shorts/otw83Odk7YQ

// Cálculo - IRRF:

// investnews.com.br/economia/nova-tabela-imposto-de-renda-o-que-muda/
// blog.genialinvestimentos.com.br/calculadora-imposto-de-renda

Var // Seção de Declarações das variáveis

    salario_bruto: real
    
    desconto_inss, desconto_irrf: real
    
    salario_descontado_inss: real
    
    total_impostos: real
    
    qnt_dependentes: inteiro
    
    salario_liquido: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("--------------------------------------------------------------")

    Escreval("SISTEMA - SALÁRIO LÍQUIDO (2.024)")
    
    Escreval("--------------------------------------------------------------")
    
    Escreval("Informe seu salário bruto (Sem desconto de nenhum imposto.):")
    Leia(salario_bruto)
    
    Escreval("--------------------------------------------------------------")
    
    // Calculando o valor do INSS:
    
    Escreval("INSS:")
    
    Escreval("")
    
    Se(salario_bruto < 1412.01) Entao
    // Máximo: R$105,90
    
        desconto_inss <- salario_bruto * 0.075
        
        Escreval("1ª faixa: R$", (salario_bruto * 0.075):2:2)
    
    Senao
    
         Se(salario_bruto >= 1412.01) E (salario_bruto < 2666.69) Entao
         // Máximo: R$112,92
         
             desconto_inss <- 105.90 + ((salario_bruto - 1412.01) * 0.09)

             Escreval("1ª faixa: R$105,90")
             Escreval("2ª faixa: R$", ((salario_bruto - 1412.01) * 0.09):2:2)
             
         Senao
         
             Se(salario_bruto >= 2666.69) E (salario_bruto < 4000.04) Entao
             // Máximo: 160,00
             
                 desconto_inss <- 105.90 + 112.92 + ((salario_bruto - 2666.69) * 0.12)

                 Escreval("1ª faixa: R$105,90")
                 Escreval("2ª faixa: R$112,92")
                 Escreval("3ª faixa: R$", ((salario_bruto - 2666.69) * 0.12):2:2)
             
             Senao
             
                 Se(salario_bruto >= 4000.04) E (salario_bruto < 7786.03) Entao
                 // Máximo: R$530,04
                 
                     desconto_inss <- 105.90 + 112.92 + 160.00 + ((salario_bruto - 4000.04) * 0.14)

                     Escreval("1ª faixa: R$105,90")
                     Escreval("2ª faixa: R$112,92")
                     Escreval("3ª faixa: R$160,00")
                     Escreval("4ª faixa: R$", ((salario_bruto - 4000.04) * 0.14):2:2)
                     
                 Senao
                 
                     desconto_inss <- 105.90 + 112.92 + 160.00 + 530.04

                     Escreval("O INSS atingiu o teto!")
                     
                     Escreval("")

                     Escreval("1ª faixa: R$105,90")
                     Escreval("2ª faixa: R$112,92")
                     Escreval("3ª faixa: R$160,00")
                     Escreval("4ª faixa: R$530,04")
                     
                 FimSe
             
             FimSe
         
         FimSe
    
    FimSe
    
    Escreval("")
    
    Escreval("Total pago de INSS: R$", desconto_inss:2:2)

    Escreval("--------------------------------------------------------------")
    
    // Calculando o valor do IRRF:
    
    salario_descontado_inss <- salario_bruto - desconto_inss
    
    Escreval("IRRF:")

    Escreval("")
    
    Se(salario_descontado_inss < 2259.21) Entao
    // Parcela dedutível: isento.

        desconto_irrf <- 0
        
        Escreval("Alíquota: 0%")

    Senao

         Se(salario_descontado_inss >= 2259.21) E (salario_descontado_inss < 2828.66) Entao
         // Parcela dedutível: R$169,44

             desconto_irrf <- (salario_descontado_inss * 0.075) - 169.44
             
             Escreval("Alíquota: 7,5%")

         Senao

             Se(salario_descontado_inss >= 2828.66) E (salario_descontado_inss < 3751.06) Entao
             // Parcela dedutível: R$381,44

                 desconto_irrf <- (salario_descontado_inss * 0.15) - 381.44
                 
                 Escreval("Alíquota: 15%")

             Senao

                 Se(salario_descontado_inss >= 3751.06) E (salario_descontado_inss <= 4664.68) Entao
                 // Parcela dedutível: R$662,77

                     desconto_irrf <- (salario_descontado_inss * 0.225) - 662.77
                     
                     Escreval("Alíquota: 22,5%")

                 Senao
                 // Parcela dedutível: R$896,00

                     desconto_irrf <- (salario_descontado_inss * 0.275) - 896.00

                     Escreval("Alíquota: 27,5%")

                 FimSe

             FimSe

         FimSe

    FimSe
    
    Escreval("")
    
    Escreval("Total pago de IRRF: R$", desconto_irrf:2:2)
    
    Escreval("--------------------------------------------------------------")
    
    // Valor de um dependente (Mensal.): R$189,59
    
    Escreval("Informe sua quantidade de dependentes, caso possua:")
    Leia(qnt_dependentes)
    
    Escreval("")
    
    Escreval("Valor deduzido dos dependentes: R$", (qnt_dependentes * 189.59):2:2)
    
    Escreval("--------------------------------------------------------------")
    
    total_impostos <- desconto_inss + desconto_irrf
    
    Escreval("Total pago de impostos: R$", total_impostos:2:2)
    
    Escreval("--------------------------------------------------------------")
    
    salario_liquido <- salario_bruto - total_impostos + (qnt_dependentes * 189.59)
    
    Escreval("Seu salário líquido é: R$", salario_liquido:2:2)
    
    Escreval("--------------------------------------------------------------")

Fimalgoritmo