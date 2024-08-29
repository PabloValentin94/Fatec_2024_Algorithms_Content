// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: ordene um vetor com números aleatórios em ordem crescente.
// Autor(a): Pablo Valentin.
// Data atual: 29/08/2024

// Variáveis:

var numeros = [];

// Funções:

function Gerar_Numeros()
{

    // console.log("-----------------------------------------------------------------------------------------------------------------------------");
  
    const qnt_numeros = parseInt(prompt("Digite a quantidade de números que devem ser gerados:", "10"), 10);

    console.log("\nQuantidade de números gerados: " + qnt_numeros + ".");
  
    for(let i = 0; i < qnt_numeros; i++)
    {
      
        let numero_aleatorio = Math.floor(Math.random() * 100);
      
        while(numeros.includes(numero_aleatorio))
        {

            numero_aleatorio = Math.floor(Math.random() * 100);

        }
      
        numeros.push(numero_aleatorio);
      
    }

    for(let j = 0; j < numeros.length; j++)
    {

        const sorteio_sinal_numero = Math.floor(Math.random() * 9);

        const numero_negativo = (sorteio_sinal_numero < 5) ? true : false;

        if(numero_negativo)
        {

            numeros[j] = numeros[j] * -1;

        }

    }
  
    // console.log("-----------------------------------------------------------------------------------------------------------------------------");
  
    console.log("\nNúmeros gerados:\n\n" + numeros + ".");
  
}

function Ordenar_Numeros()
{

    // console.log("-----------------------------------------------------------------------------------------------------------------------------");
  
    for(let k = 0; k < numeros.length; k++)
    {
      
        for(let l = 0; l < numeros.length; l++)
        {
          
            if(numeros[k] < numeros[l])
            {
              
                const menor_numero = numeros[k];
              
                numeros[k] = numeros[l];
              
                numeros[l] = menor_numero;
              
            }
          
        }
      
    }

    console.log("\nNúmeros ordenados de forma crescente:\n\n" + numeros + ".");

    // console.log("-----------------------------------------------------------------------------------------------------------------------------");
  
}

// Código:

Gerar_Numeros();

Ordenar_Numeros();