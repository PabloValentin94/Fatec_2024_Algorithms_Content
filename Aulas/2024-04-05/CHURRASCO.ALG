Algoritmo "Churrasco"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Sistema de c�lculo de custos de um churrasco com 5 itens.
// Autor(a): Pablo Valentin.
// Data atual: 05/04/2024

// Seu algoritmo dever� ler o nome do item (Carne, cerveja, etc.),
// o valor unit�rio e a quantidade a ser comprada. Leia tamb�m a quantidade
// de pessoas que ir�o e apresente o custo total do churrasco e o valor a ser
// pago por cada participante. Ao final mostre a lista de ingredientes do
// churrasco.

Var // Se��o de Declara��es das vari�veis

   qnt_participantes: inteiro

   produto_atual: caractere

   i, j: inteiro

   nomes_produtos: vetor[1..5] de caractere

   valores_produtos: vetor[1..5,1..2] de real // Linhas X Colunas (Quantidades e pre�os.).

   total_item, total_churrasco: real

   produto_repetido: logico

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Escreval("---------------------------------------------------------------")
   
   Escreval("SISTEMA - CHURRASCO")
   
   Escreval("---------------------------------------------------------------")
   
   Escreval("Informe a quantidade de participantes:")
   Leia(qnt_participantes)
   
   Escreval("---------------------------------------------------------------")
   
   Escreval("O churrasco ter� 5 itens.")

   Para i DE 1 ATE 5 Faca
   
   Escreval("---------------------------------------------------------------")
   
      produto_repetido <- verdadeiro

      Repita

         Escreval("Digite o nome do", i, "� item:")
         Leia(produto_atual)

         Para j DE 1 ATE 5 Faca

            Se(produto_atual = nomes_produtos[j]) Entao

               Escreval("")

               Escreval("Esse produto j� foi adicionado!")
               
               Escreval("")
               
               produto_repetido <- verdadeiro
               
               Interrompa
               
            Senao
            
               produto_repetido <- falso
               
            FimSe
            
         FimPara
         
      ATE(produto_repetido = falso)
      
      nomes_produtos[i] <- produto_atual
      
      Escreval("")
      
      Escreval("Digite a quantidade do", i, "� item (Especifique em quilogramas, se necess�rio.):")
      Leia(valores_produtos[i,1])
      
      Escreval("")
      
      Escreval("Digite o preco (Por unidade ou por quilograma.) do", i, "� item:")
      Leia(valores_produtos[i,2])

   FimPara
   
   LimpaTela()
   
   Escreval("---------------------------------------------------------------")
   
   Escreval("Listagem de itens:")

   Escreval("")
   
   Para i DE 1 ATE 5 Faca
   
        Escreval(i, "� produto:")

        Escreval("")
        
        Escreval("Nome:", nomes_produtos[i])
        Escreval("Quantidade:", valores_produtos[i,1])
        Escreval("Pre�o: R$", valores_produtos[i,2]:2:2)
        
        Escreval("")
        
        total_item <- valores_produtos[i,2] * valores_produtos[i,1]
        
        Escreval("Valor total � pagar deste item: R$", total_item:2:2)
        
        Se(i < 5) Entao
        
           Escreval("")
           
        FimSe
        
        total_churrasco <- total_churrasco + total_item

   FimPara
   
   Escreval("---------------------------------------------------------------")
   
   Escreval("Gasto total do churrasco: R$", total_churrasco:2:2)
   
   Escreval("---------------------------------------------------------------")
   
   Escreval("Valor a ser pago por pessoa: R$", (total_churrasco / qnt_participantes):2:2)

   Escreval("---------------------------------------------------------------")

Fimalgoritmo