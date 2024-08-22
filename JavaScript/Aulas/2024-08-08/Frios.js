// Disciplina: Estrutura de Dados.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula a comissão de um funcionário.
// Autor(a): Pablo Valentin.
// Data atual: 08/08/2024

// Variáveis:

var quantidades = {mussarela: 0, presunto: 0, mortadela: 0, peito_peru: 0};

var valores_quilograma = {mussarela: 55, presunto: 33, mortadela: 23, peito_peru: 85};

var valores_totais_vendidos = {mussarela: 0.00, presunto: 0.00, mortadela: 0.00, peito_peru: 0.00};

var percentuais_comissoes_funcionario = {mussarela: 0.07, presunto: 0.04, mortadela: 0.08, peito_peru: 0.02};

var comissoes_funcionario = {mussarela: 0.00, presunto: 0.00, mortadela: 0.00, peito_peru: 0.00};

var valor_total_vendas = 0.00;

var comissao_total_funcionario = 0.00;

// Código:

console.log("-------------------------------------------------------------------");
console.log("SISTEMA - FRIOS");
console.log("-------------------------------------------------------------------");

quantidades.mussarela = parseFloat(prompt("Digite a quantidade vendida de mussarela, em quilogramas:"));

console.log("Quantidade vendida de mussarela: " + quantidades.mussarela.toFixed(2) + " quilogramas.");

console.log("\n");

quantidades.presunto = parseFloat(prompt("Digite a quantidade vendida de presunto, em quilogramas:"));

console.log("Quantidade vendida de presunto: " + quantidades.presunto.toFixed(2) + " quilogramas.");

console.log("\n");

quantidades.mortadela = parseFloat(prompt("Digite a quantidade vendida de mortadela, em quilogramas:"));

console.log("Quantidade vendida de mortadela: " + quantidades.mortadela.toFixed(2) + " quilogramas.");

console.log("\n");

quantidades.peito_peru = parseFloat(prompt("Digite a quantidade vendida de peito de peru, em quilogramas:"));

console.log("Quantidade vendida de peito de peru: " + quantidades.peito_peru.toFixed(2) + " quilogramas.");

console.log("-------------------------------------------------------------------");

valores_totais_vendidos.mussarela = quantidades.mussarela * valores_quilograma.mussarela;

console.log("Valor total vendido de mussarela: R$" + valores_totais_vendidos.mussarela.toFixed(2));

console.log("\n");

valores_totais_vendidos.presunto = quantidades.presunto * valores_quilograma.presunto;

console.log("Valor total vendido de presunto: R$" + valores_totais_vendidos.presunto.toFixed(2));

console.log("\n");

valores_totais_vendidos.mortadela = quantidades.mortadela * valores_quilograma.mortadela;

console.log("Valor total vendido de mortadela: R$" + valores_totais_vendidos.mortadela.toFixed(2));

console.log("\n");

valores_totais_vendidos.peito_peru = quantidades.peito_peru * valores_quilograma.peito_peru;

console.log("Valor total vendido de peito de peru: R$" + valores_totais_vendidos.peito_peru.toFixed(2));

console.log("-------------------------------------------------------------------");

comissoes_funcionario.mussarela = valores_totais_vendidos.mussarela * percentuais_comissoes_funcionario.mussarela;

console.log("Comissão de mussarela: R$" + comissoes_funcionario.mussarela.toFixed(2));

console.log("\n");

comissoes_funcionario.presunto = valores_totais_vendidos.presunto * percentuais_comissoes_funcionario.presunto;

console.log("Comissão de presunto: R$" + comissoes_funcionario.presunto.toFixed(2));

console.log("\n");

comissoes_funcionario.mortadela = valores_totais_vendidos.mortadela * percentuais_comissoes_funcionario.mortadela;

console.log("Comissão de mortadela: R$" + comissoes_funcionario.mortadela.toFixed(2));

console.log("\n");

comissoes_funcionario.peito_peru = valores_totais_vendidos.peito_peru * percentuais_comissoes_funcionario.peito_peru;

console.log("Comissão de peito de peru: R$" + comissoes_funcionario.peito_peru.toFixed(2));

console.log("-------------------------------------------------------------------");

valor_total_vendas += valores_totais_vendidos.mussarela + valores_totais_vendidos.presunto + valores_totais_vendidos.mortadela + valores_totais_vendidos.peito_peru;

comissao_total_funcionario += comissoes_funcionario.mussarela + comissoes_funcionario.presunto + comissoes_funcionario.mortadela + comissoes_funcionario.peito_peru;

console.log("Receita obtida com as vendas: R$" + valor_total_vendas.toFixed(2));

console.log("\n");

console.log("Comissão total do vendedor: R$" + comissao_total_funcionario.toFixed(2));

console.log("-------------------------------------------------------------------");

console.log("Lucro final da empresa: R$" + (valor_total_vendas - comissao_total_funcionario).toFixed(2));

console.log("-------------------------------------------------------------------");