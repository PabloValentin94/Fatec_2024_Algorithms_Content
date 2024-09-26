// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: crie uma pilha que simule o histórico de páginas de um navegador web.
// Autor(a): Pablo Valentin.
// Data atual: 19/09/2024

// Funcionamento de uma pilha: LIFO (Last In First Out).

/*

    Funções de Array:

    unshift: adiciona um novo elemento, que precede o primeiro do array.

    shift: remove o primeiro elemento do array.

    push: adiciona um novo elemento, que procede o último do array.

    pop: remove o último elemento do array.

*/

// Classe.

class Navegador
{

    historico;

    constructor()
    {

        this.historico = [];

    }

    Abrir_Pagina(pagina)
    {

        console.log("----------------------------------------------------------------------------------");

        this.historico.push(pagina);

        console.log(`Página aberta: ${pagina}.`);

    }

    Fechar_Pagina()
    {

        let saida = "Página fechada: ";

        console.log("----------------------------------------------------------------------------------");

        if(this.historico.length === 0)
        {

            saida = saida.concat("Não há páginas abertas.");
            
        }

        else
        {

            saida = saida.concat(this.historico.pop(), ".");

        }

        console.log(saida);

    }

}

// Objeto.

var navegador = new Navegador();

// Exemplo.

navegador.Abrir_Pagina("Mercado Livre");

navegador.Abrir_Pagina("AliExpress");

navegador.Abrir_Pagina("Shopee");

navegador.Abrir_Pagina("Shein");

console.log("----------------------------------------------------------------------------------");

console.table(navegador.historico);

navegador.Fechar_Pagina();

navegador.Fechar_Pagina();

console.log("----------------------------------------------------------------------------------");

console.table(navegador.historico);

console.log("----------------------------------------------------------------------------------");