// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: entendendo o conceito de Lista Dinamicamente Encadeada.
// Autor(a): Pablo Valentin.
// Data atual: 17/10/2024

// Classes.

class Node
{

    value;

    next;

    constructor(value)
    {

        this.value = value;

        this.next = null;

    }

}

class List
{

    head;

    constructor()
    {

        this.head = null;

    }

    Insert_Beginning(value)
    {

        let node = new Node(value);

        node.next = this.head;

        this.head = node;

    }

    Insert_Ending(value)
    {

        let node = new Node(value);

        if(this.head === null)
        {

            this.head = node;

        }

        else
        {

            let analised_node = this.head;

            while(analised_node.next !== null)
            {

                analised_node = analised_node.next;

            }

            analised_node.next = node;

        }

    }

    Remove(value)
    {

        if(this.head !== null)
        {

            if(this.head.value === value)
            {

                this.head = this.head.next;
                
            }

            else
            {

                let analised_node = this.head;

                while(analised_node.next !== null && analised_node.next.value !== value)
                {

                    analised_node = analised_node.next;

                }

                if(analised_node.next !== null)
                {

                    analised_node.next = analised_node.next.next;

                }

            }

        }

    }

    Find(value)
    {

        let analised_node = this.head;

        while(analised_node !== null)
        {

            if(analised_node.value !== value)
            {

                analised_node = analised_node.next;

            }

            else
            {

                break;

            }

        }

        console.log("\nValor retornado: ".concat((analised_node === null) ? "nenhum." : analised_node.value));

    }

    Print()
    {

        let analised_node = this.head;

        let output = "\nValores (Nós): ";

        while(analised_node !== null)
        {

            output += `${analised_node.value} -> `;

            analised_node = analised_node.next;

        }

        output += "null."

        console.log(output);

    }

}

// Objeto.

var nodes = new List();

// Testes.

nodes.Insert_Beginning(2);
nodes.Insert_Beginning(4);

nodes.Insert_Ending(6);
nodes.Insert_Ending(9);

nodes.Print();

nodes.Remove(4);
nodes.Remove(6);

nodes.Print();

nodes.Find(9);

nodes.Find(94);