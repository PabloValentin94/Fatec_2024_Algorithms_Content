// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: revisão de lista dinamicamente encadeada.
// Autor(a): Pablo Valentin.
// Data atual: 04/12/2024

// Classes.

class Node
{

    value; next;

    constructor(value)
    {

        this.value = value;

        this.next = null;

    }
    
}

class Lista
{

    head;

    constructor()
    {

        this.head = null;

    }

    Insert_At_Beggining(value)
    {

        let new_node = new Node(value);

        if(this.head === null)
        {

            this.head = new_node;

        }

        else
        {

            let old_head = this.head;

            new_node.next = old_head;

            this.head = new_node;

        }
        
    }

    Insert_At_End(value)
    {

        let new_node = new Node(value);

        if(this.head === null)
        {

            this.head = new_node;

        }

        else
        {

            let analised_node = this.head;

            while(analised_node.next !== null)
            {

                analised_node = analised_node.next;

            }

            analised_node.next = new_node;

        }

    }

    Remove_By_Value(value)
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

                let new_next = analised_node.next.next;

                delete analised_node.next;

                analised_node.next = new_next;

            }

        }

    }

    Find(value)
    {

        let i = 1, analised_node = this.head;

        while(analised_node !== null && analised_node.value !== value)
        {

            analised_node = analised_node.next;

            i++;

        }

        const output = (analised_node !== null) ? `Node com o valor ${value} encontrado na posição ${i} da lista dinamicamente encadeada.` : `Node com o valor ${value} não encontrado!`;

        console.log(output);
        
    }

    Print()
    {

        let output = "Lista Encadeada:\n\n", analised_node = this.head;

        if(this.head !== null)
        {

            while(analised_node !== null)
            {
    
                output = output.concat(`${analised_node.value} -> `);
    
                analised_node = analised_node.next;
    
            }
    
            output = output.concat("null.");
            
        }

        else
        {

            output = output.concat("Nenhum Node encontrado!");

        }

        console.log(output);

    }

}

// Objeto.

var lista = new Lista();

// Testes.

console.log("------------------------------------------------------------------------------");

lista.Print();

console.log("------------------------------------------------------------------------------");

lista.Insert_At_Beggining(10);
lista.Insert_At_Beggining(20);
lista.Insert_At_Beggining(30);

lista.Print();

console.log("------------------------------------------------------------------------------");

lista.Insert_At_End(40);
lista.Insert_At_End(50);
lista.Insert_At_End(60);

lista.Print();

console.log("------------------------------------------------------------------------------");

lista.Remove_By_Value(30);
lista.Remove_By_Value(40);

lista.Print();

console.log("------------------------------------------------------------------------------");

lista.Find(10);
lista.Find(40);
lista.Find(50);

console.log("------------------------------------------------------------------------------");

lista.Print();

console.log("------------------------------------------------------------------------------");