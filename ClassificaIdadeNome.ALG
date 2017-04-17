Algoritmo "ClassificaIdadeNome"

Var
// Seção de Declarações das variáveis 
  listaIdades : vetor[0..5] de inteiro;
  listaNomes  : vetor[0..5] de caracter;
  i: inteiro
  j: inteiro
  aux: inteiro
  auxCaracter: caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   listaIdades[0] <- 19;
   listaIdades[1] <- 25;
   listaIdades[2] <- 82;
   listaIdades[3] <- 18;
   listaIdades[4] <- 67;
   listaIdades[5] <- 45;
   listaNomes[0] <- "José";
   listaNomes[1] <- "Carlos";
   listaNomes[2] <- "Zenóbia";
   
   // Classifica idade em ordem decrescente
   para i de 0 ate 5 faca
        para j de i ate 5 faca
             se listaIdades[i] <  listaIdades[j] entao
                aux <- listaIdades[i]
                listaIdades[i] <- listaIdades[j]
                listaIdades[j] <- aux;
             fimse
        fimpara
   fimpara
   // imprime a lista de idade decrescente
   para i de 0 ate 5 faca
        escreval(i, " - ",listaIdades[i])
   fimpara
   
   
   // Classifica nome em ordem crescente
   para i de 0 ate 3 faca
        para j de i ate 3 faca
             se listaNomes[i] >  listaNomes[j] entao
                auxCaracter <- listaNomes[i]
                listaNomes[i] <- listaNomes[j]
                listaNomes[j] <- auxCaracter;
             fimse
        fimpara
   fimpara
   // imprime a lista de idade decrescente
   para i de 0 ate 2 faca
        escreval(i, " - ",listaNomes[i])
   fimpara


Fimalgoritmo