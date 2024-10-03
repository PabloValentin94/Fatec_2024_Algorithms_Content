// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: desenvolva um carrinho de compras sem utilizar funções nativas.
// Autor(a): Pablo Valentin.
// Data atual: 03/10/2024

// Classes.

class Produto
{

    id;
    nome;
    quantidade;
    preco;
    total;

    constructor(nome, quantidade, preco)
    {

        this.nome = nome;

        this.quantidade = quantidade;

        this.preco = preco;

        this.total = this.preco * this.quantidade;

    }

}

class Carrinho_Compras
{

    listagem;
    comprimento;

    constructor()
    {

        this.Limpar();

    }

    Limpar()
    {

        this.listagem = [];

        this.comprimento = 0;

    }

    Visualizar()
    {

        console.table(this.listagem);

    }

    Pesquisar(nome)
    {

        let retorno = null;

        for(let i = 0; i < this.comprimento; i++)
        {

            if(this.listagem[i].nome === nome)
            {

                retorno = this.listagem[i];

                break;

            }

        }

        return retorno;

    }

    Adicionar(elemento)
    {

        const item_existente = this.Pesquisar(elemento.nome);

        if(item_existente === null)
        {

            elemento.id = this.comprimento;

            this.listagem[this.comprimento] = elemento;

            this.comprimento++;

        }

        else
        {

            this.Atualizar(item_existente.id, elemento.quantidade);

        }

    }

    Atualizar(indice, quantidade)
    {

        this.listagem[indice].quantidade += quantidade;

        this.listagem[indice].total = this.listagem[indice].preco * this.listagem[indice].quantidade;

    }

    Remover()
    {

        if(this.comprimento > 0)
        {

            if(this.comprimento === 1)
            {

                this.Limpar();

            }

            else
            {

                let nova_listagem = [];

                for(let i = 0; i < this.comprimento - 1; i++)
                {

                    nova_listagem[i] = this.listagem[i];

                }

                this.listagem = nova_listagem;

                this.comprimento--;

            }

        }

    }

    Contar()
    {

        return this.comprimento;

    }

    Calcular()
    {

        let valor_total = 0.00;

        if(this.comprimento > 0)
        {

            this.listagem.forEach(item => {

                valor_total += item.total;
    
            });

        }

        return valor_total.toFixed(2);

    }
    
}

// Objeto.

var carrinho = new Carrinho_Compras();

// Função.

function Validar_Pesquisa(nome)
{

    const item = carrinho.Pesquisar(nome);

    if(item === null)
    {

        return `O produto ${nome} não foi encontrado!`;

    }

    else
    {

        return `O produto ${item.nome} foi encontrado com o ID ${item.id}.`;

    }

}

// Exemplo.

console.log("------------------------------------------------------------------");

console.log("Estado inicial do carrinho de compras:\n");

carrinho.Visualizar();

console.log("------------------------------------------------------------------");

carrinho.Adicionar(new Produto("Camisa", 1, 40.00)); // Inserção.

carrinho.Adicionar(new Produto("Camisa", 2, 40.00)); // Atualização.

carrinho.Adicionar(new Produto("Calça", 1, 90.00));

carrinho.Adicionar(new Produto("Par de Meias", 5, 4.00));

carrinho.Adicionar(new Produto("Blusa", 1, 120.00));

console.log("Estado do carrinho de compras após algumas inserções:\n");

carrinho.Visualizar();

console.log("------------------------------------------------------------------");

carrinho.Remover();

carrinho.Remover();

console.log("Estado do carrinho de compras após algumas remoções:\n");

carrinho.Visualizar();

console.log("------------------------------------------------------------------");

console.log("Buscando elementos do carrinho de compras:\n");

console.log(Validar_Pesquisa("Camisa"), "\n");

console.log(Validar_Pesquisa("Tênis"));

console.log("------------------------------------------------------------------");

console.log(`Quantidade atual de itens do carrinho de compras: ${carrinho.Contar()}`);

console.log("------------------------------------------------------------------");

console.log(`Valor monetário total do carrinho de compras: R$${carrinho.Calcular()}`);

console.log("------------------------------------------------------------------");

carrinho.Limpar();

console.log("Removendo todos os itens do carrinho de compras:\n");

carrinho.Visualizar();

console.log("------------------------------------------------------------------");