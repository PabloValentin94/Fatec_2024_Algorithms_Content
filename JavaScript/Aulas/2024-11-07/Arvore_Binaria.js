// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: entendendo o conceito de Árvore Binária.
// Autor(a): Pablo Valentin.
// Data atual: 07/11/2024

// Classes.

class Node
{

    left; value; right;

    constructor(value)
    {

        this.value = value;

        this.left = null;

        this.right = null;

    }

}

class Tree
{

    root;

    constructor()
    {

        this.root = null;

    }

    Insert(value)
    {

        const node = new Node(value);

        if(this.root === null)
        {

            this.root = node;
            
        }

        else
        {

            this.Insert_Node(this.root, node);

        }

    }

    Insert_Node(node, new_node)
    {

        if(new_node.value < node.value)
        {

            (node.left === null) ? node.left = new_node : this.Insert_Node(node.left, new_node);

        }

        else
        {

            (node.right === null) ? node.right = new_node : this.Insert_Node(node.right, new_node);

        }

    }

    Remove(value)
    {

        this.root = this.Remove_Node(this.root, value);

    }

    Remove_Node(node, value)
    {

        if(node !== null)
        {

            if(value < node.value)
            {

                node.left = this.Remove_Node(node.left, value);

                return node;

            }

            else if(value > node.value)
            {

                node.right = this.Remove_Node(node.right, value);

                return node;

            }

            else
            {

                if(node.left === null && node.right === null)
                {

                    node = null;

                    return node;

                }

                else if(node.left === null || node.right === null)
                {

                    node = (node.left === null) ? node.right : node.left;

                    return node;

                }

                else
                {

                    const minor_node = this.Find_Min_Node(node.right);

                    node.value = minor_node.value;

                    node.right = this.Remove_Node(node.right, minor_node.value);

                    return node;

                }

            }

        }

    }

    In_Order(node = this.root)
    {

        if(node !== null)
        {

            this.In_Order(node.left);

            console.log(node.value);

            this.In_Order(node.right);

        }

    }

    Pre_Order(node = this.root)
    {

        if(node !== null)
        {

            console.log(node.value);

            this.Pre_Order(node.left);

            this.Pre_Order(node.right);

        }

    }

    Post_Order(node = this.root)
    {

        if(node !== null)
        {

            this.Post_Order(node.left);

            this.Post_Order(node.right);

            console.log(node.value);

        }

    }

    Search(value)
    {

        return this.Search_Node(this.root, value);

    }

    Search_Node(node, value)
    {

        if(node !== null)
        {

            if(value === node.value)
            {

                return true;

            }

            else if(value < node.value)
            {

                return this.Search_Node(node.left, value);

            }

            else
            {

                return this.Search_Node(node.right, value);

            }

        }

        else
        {

            return false;

        }

    }

    Find_Min_Node(node)
    {

        while(node.left !== null)
        {

            node = node.left;

        }

        return node;

    }

}

// Objeto.

var arvore_binaria = new Tree();

// Testes.

console.log("------------------------------------------------------------------------------");
console.log("Exibindo os valores da árvore binária (In_Order), após algumas inserções:\n");

arvore_binaria.Insert(0);

arvore_binaria.Insert(-10);

arvore_binaria.Insert(100);

arvore_binaria.Insert(-30);

arvore_binaria.In_Order();

console.log("------------------------------------------------------------------------------");
console.log("Exibindo os valores da árvore binária (In_Order), após algumas remoções:\n");

arvore_binaria.Remove(100);

arvore_binaria.Remove(-30);

arvore_binaria.In_Order();

console.log("------------------------------------------------------------------------------");
console.log("Realizando buscas na árvore binária:\n")

console.log(`O valor informado ${(arvore_binaria.Search(100)) ? "existe" : "não existe"} na árvore binária.\n`);

console.log(`O valor informado ${(arvore_binaria.Search(-10)) ? "existe" : "não existe"} na árvore binária.`);

console.log("------------------------------------------------------------------------------");