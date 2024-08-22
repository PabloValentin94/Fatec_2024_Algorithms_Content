// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula a altura média dos jogadores de um time de volei.
// Autor(a): Pablo Valentin.
// Data atual: 22/08/2024

// noprotect

// Variáveis:

var qnt_jogadores = 0;

var jogadores = [

    {nome: "", altura: 0.00}

];

var maior_jogador, menor_jogador;

var altura_media = 0.00;

// Código:

console.log("-------------------------------------------------------------------------------------------------");
console.log("ALTURA MÉDIA");
console.log("-------------------------------------------------------------------------------------------------");

while(qnt_jogadores < 22)
{

    jogadores[qnt_jogadores].nome = prompt("Digite o nome do " + (qnt_jogadores + 1) + "º jogador:");

    jogadores[qnt_jogadores].altura = parseFloat(prompt("Digite a altura, em metros, do " + (qnt_jogadores + 1) + "º jogador:"));

    if(qnt_jogadores == 0)
    {

        maior_jogador = jogadores[qnt_jogadores];

        menor_jogador = maior_jogador;

    }

    else
    {

        if(jogadores[qnt_jogadores].altura > maior_jogador.altura)
        {

            maior_jogador = jogadores[qnt_jogadores];

        }

        if(jogadores[qnt_jogadores].altura < menor_jogador.altura)
        {

            menor_jogador = jogadores[qnt_jogadores];

        }

    }

    qnt_jogadores++;

    if(!confirm("Deseja inserir os dados de mais um jogador?"))
    {

        break;

    }

    else
    {

        jogadores.push({nome: "", altura: 0.00});

    }

}

console.log("A maior altura pertence ao jogador " + maior_jogador.nome + ", sendo " + maior_jogador.altura.toFixed(2) + " metros.");

console.log("-------------------------------------------------------------------------------------------------");

console.log("A menor altura pertence ao jogador " + menor_jogador.nome + ", sendo " + menor_jogador.altura.toFixed(2) + " metros.");

console.log("-------------------------------------------------------------------------------------------------");

altura_media = (maior_jogador.altura + menor_jogador.altura) / 2;

console.log("A altura média deste time é: " + altura_media.toFixed(2) + " metros.");

console.log("-------------------------------------------------------------------------------------------------");