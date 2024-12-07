Algoritmo "Salario_Liquido"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

// De acordo com a legisla��o CLT, � descontado de funion�rios o valor do
// INSS e do IRRF. Fa�a um algoritmo que receba o sal�rio bruto de uma
// pessoa e, a partir desses impostos, calcule seu sal�rio l�quido.

// C�lculo - INSS:

// www.contabilizei.com.br/contabilidade-online/desconto-inss/
// www.youtube.com/shorts/otw83Odk7YQ

// C�lculo - IRRF:

// investnews.com.br/economia/nova-tabela-imposto-de-renda-o-que-muda/
// blog.genialinvestimentos.com.br/calculadora-imposto-de-renda

Var // Se��o de Declara��es das vari�veis

    salario_bruto: real
    
    desconto_inss, desconto_irrf: real
    
    salario_descontado_inss: real
    
    total_impostos: real
    
    qnt_dependentes: inteiro
    
    salario_liquido: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("--------------------------------------------------------------")

    Escreval("SISTEMA - SAL�RIO L�QUIDO (2.024)")
    
    Escreval("--------------------------------------------------------------")
    
    Escreval("Informe seu sal�rio bruto (Sem desconto de nenhum imposto.):")
    Leia(salario_bruto)
    
    Escreval("--------------------------------------------------------------")
    
    // Calculando o valor do INSS:
    
    Escreval("INSS:")
    
    Escreval("")
    
    Se(salario_bruto < 1412.01) Entao
    // M�ximo: R$105,90
    
        desconto_inss <- salario_bruto * 0.075
        
        Escreval("1� faixa: R$", (salario_bruto * 0.075):2:2)
    
    Senao
    
         Se(salario_bruto >= 1412.01) E (salario_bruto < 2666.69) Entao
         // M�ximo: R$112,92
         
             desconto_inss <- 105.90 + ((salario_bruto - 1412.01) * 0.09)

             Escreval("1� faixa: R$105,90")
             Escreval("2� faixa: R$", ((salario_bruto - 1412.01) * 0.09):2:2)
             
         Senao
         
             Se(salario_bruto >= 2666.69) E (salario_bruto < 4000.04) Entao
             // M�ximo: 160,00
             
                 desconto_inss <- 105.90 + 112.92 + ((salario_bruto - 2666.69) * 0.12)

                 Escreval("1� faixa: R$105,90")
                 Escreval("2� faixa: R$112,92")
                 Escreval("3� faixa: R$", ((salario_bruto - 2666.69) * 0.12):2:2)
             
             Senao
             
                 Se(salario_bruto >= 4000.04) E (salario_bruto < 7786.03) Entao
                 // M�ximo: R$530,04
                 
                     desconto_inss <- 105.90 + 112.92 + 160.00 + ((salario_bruto - 4000.04) * 0.14)

                     Escreval("1� faixa: R$105,90")
                     Escreval("2� faixa: R$112,92")
                     Escreval("3� faixa: R$160,00")
                     Escreval("4� faixa: R$", ((salario_bruto - 4000.04) * 0.14):2:2)
                     
                 Senao
                 
                     desconto_inss <- 105.90 + 112.92 + 160.00 + 530.04

                     Escreval("O INSS atingiu o teto!")
                     
                     Escreval("")

                     Escreval("1� faixa: R$105,90")
                     Escreval("2� faixa: R$112,92")
                     Escreval("3� faixa: R$160,00")
                     Escreval("4� faixa: R$530,04")
                     
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
    // Parcela dedut�vel: isento.

        desconto_irrf <- 0
        
        Escreval("Al�quota: 0%")

    Senao

         Se(salario_descontado_inss >= 2259.21) E (salario_descontado_inss < 2828.66) Entao
         // Parcela dedut�vel: R$169,44

             desconto_irrf <- (salario_descontado_inss * 0.075) - 169.44
             
             Escreval("Al�quota: 7,5%")

         Senao

             Se(salario_descontado_inss >= 2828.66) E (salario_descontado_inss < 3751.06) Entao
             // Parcela dedut�vel: R$381,44

                 desconto_irrf <- (salario_descontado_inss * 0.15) - 381.44
                 
                 Escreval("Al�quota: 15%")

             Senao

                 Se(salario_descontado_inss >= 3751.06) E (salario_descontado_inss <= 4664.68) Entao
                 // Parcela dedut�vel: R$662,77

                     desconto_irrf <- (salario_descontado_inss * 0.225) - 662.77
                     
                     Escreval("Al�quota: 22,5%")

                 Senao
                 // Parcela dedut�vel: R$896,00

                     desconto_irrf <- (salario_descontado_inss * 0.275) - 896.00

                     Escreval("Al�quota: 27,5%")

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
    
    Escreval("Seu sal�rio l�quido �: R$", salario_liquido:2:2)
    
    Escreval("--------------------------------------------------------------")

Fimalgoritmo