Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/04/2017
Var
// Se��o de Declara��es das vari�veis 
  meuVetor : vetor[0..7] de inteiro;
  i: inteiro
  j: inteiro
  aux: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   meuVetor[0] <- 1;
   meuVetor[1] <- 12;
   meuVetor[2] <- 49;
   meuVetor[3] <- 152;
   meuVetor[4] <- 87;
   meuVetor[5] <- 18;
   meuVetor[6] <- 99;
   meuVetor[7] <- 53;
   
   para i de 0 ate 7 faca
        para j de i ate 7 faca
             se meuVetor[i] >  meuVetor[j] entao
                aux <- meuVetor[i]
                meuVetor[i] <- meuVetor[j]
                meuVetor[j] <- aux;
             fimse
        fimpara
   fimpara


   para i de 0 ate 7 faca
        escreval(i, " - ",meuVetor[i])
   
   fimpara


Fimalgoritmo