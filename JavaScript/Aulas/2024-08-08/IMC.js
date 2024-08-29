// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula o IMC do usuário utilizando estruturas de condição.
// Autor(a): Pablo Valentin.
// Data atual: 08/08/2024

// Faça um algoritmo que calcule o IMC (Índice de Massa Corporal) com base nos
// dados obtidos.

// IMC:	                   CLASSIFICAÇÃO:      OBESIDADE (GRAU):

// MENOR QUE 18,5	       MAGREZA             Nenhuma
// ENTRE 18,5 E 24,9	   NORMAL              Nenhuma
// ENTRE 25,0 E 29,9	   SOBREPESO	       I
// ENTRE 30,0 E 39,9	   OBESIDADE	       II
// MAIOR QUE 40,0	       OBESIDADE GRAVE	   III

// Variáveis:

var peso = 0.00, altura = 0.00, imc = 0.00;

var classificacao = "";

// Funções:

function Classificar_IMC(valor)
{

    let resultado = "";

    if(valor < 18.5)
    {

        resultado = "Magreza (Abaixo do peso.)";

    }

    else if(valor >= 18.5 && valor < 25)
    {

        resultado = "Normal (Peso ideal.)";

    }

    else if(valor >= 25 && valor < 30)
    {

        resultado = "Sobrepeso (Obesidade grau I.)";

    }

    else if(valor >= 30 && valor < 40)
    {

        resultado = "Obesidade (Obesidade grau II.)";

    }

    else
    {

        resultado = "Obesidade grave (Obesidade grau III.)";

    }

    return resultado;

}

// Código:

console.log("------------------------------------------------------");
console.log("SISTEMA - IMC");
console.log("------------------------------------------------------");

peso = parseFloat(prompt("Informe seu peso (Quilos):"));

console.log("Peso: " + peso.toFixed(2) + " quilogramas.");

console.log("------------------------------------------------------");

altura = parseFloat(prompt("Informe sua altura (Metros):"));

console.log("Altura: " + altura.toFixed(2) + " metro(s).");

console.log("------------------------------------------------------");

imc = peso / (altura * altura);

console.log("Índice de massa corporal: " + imc.toFixed(2));

console.log("------------------------------------------------------");

classificacao = Classificar_IMC(imc);

console.log("Classificação - IMC: " + classificacao + ".");

console.log("------------------------------------------------------");