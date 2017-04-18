Algoritmo "ClassificaIdadeNome"

Var
// Seção de Declarações das variáveis 
  notas : vetor[0..352, 0..1] de Real
  media: vetor[0..352] de Real
  listaNomes  : vetor[0..352] de caracter;
//  auxNota1, auxNota2: Real;
  i: inteiro
  j: inteiro
  aux: Real
  auxCaracter: caracter
  totalAprovados, totalReprovados, totalRecuperacao: inteiro;
Inicio

   totalAprovados <- 0;
   totalReprovados <- 0;
   totalRecuperacao <- 0;
   
   // pega os valores
   para i de 0 ate 352 faca
     escreva("Nome do aluno:")
     leia(listaNomes[i])
     escreva("Digite a nota 1")
     leia(notas[i,0])
     escreva("Digite a nota 2")
     leia(notas[i,1])
     media[i] <- (notas[i,0]+notas[i,1]) /2
     
   fimpara
   
   // Classifica as medias, e ajusta os nomes
    para i de 0 ate 352 faca
        para j de i ate 352 faca
             se media[i] >  media[j] entao
                // ordena media
                aux <- media[i]
                media[i] <- media[j]
                media[j] <- aux
                // ajusta o nome do aluno na lista
                auxCaracter <- listaNomes[i]
                listaNomes[i] <- listaNomes[j]
                listaNomes[j] <- auxCaracter;
                
                // ajusta o vetor de notas
                aux <- notas[i]
                notas[i] <- notas[j]
                notas[j] <- aux;
             fimse
        fimpara
   fimpara

   
   // Classifica nome em ordem crescente

   // imprime a lista de idade decrescente
   para i de 0 ate 352 faca
        escreva(i, " - ",listaNomes[i], " Média: ", media[i] ," Nota1:", notas[i,0], "Nota2:", notas[i,1] )
        se media[i] >= 70 entao
           escreval(" - APROVADO")
           totalAprovados <- (totalAprovados+1)
        senao
             se media[i] < 40 entao
                escreval(" - REPROVADO")
                totalReprovados <- (totalReprovados+1)
//             fimse
        senao
          escreval(" - RECUPERACAO")
          totalRecuperacao <- (totalRecuperacao+1)
        fimse
        
        fimse
        
   fimpara
   
   //  classifica ordem alfabética
   para i de 0 ate 352 faca
        para j de i ate 352 faca
             se listaNomes[i] >  listaNomes[j] entao
                // ordena media
                aux <- media[i]
                media[i] <- media[j]
                media[j] <- aux
                // ajusta o nome do aluno na lista
                auxCaracter <- listaNomes[i]
                listaNomes[i] <- listaNomes[j]
                listaNomes[j] <- auxCaracter;

                // ajusta o vetor de notas
                aux <- notas[i]
                notas[i] <- notas[j]
                notas[j] <- aux;
             fimse
        fimpara
   fimpara
   
   para i de 0 ate 352 faca
        escreva(i, " - ",listaNomes[i], " Média: ", media[i] ," Nota1:", notas[i,0], "Nota2:", notas[i,1] )
        se media[i] >= 70 entao
           escreval(" - APROVADO")
        senao
             se media[i] < 40 entao
                escreval(" - REPROVADO")
//             fimse
        senao
          escreval(" - RECUPERACAO")
        fimse

        fimse
        
   fimpara
   
   escreva("Total Aprovados  : ")
   escreva(totalAprovados, " ", (totalAprovados/352)*100, "%" )
   escreval("")
   escreva("Total Reprovados : ")
   escreva(totalReprovados, " ", (totalReprovados/352)*100, "%" )
   escreval("")
   escreva("Total Recuperação: ")
   escreva(totalRecuperacao, " ", (totalRecuperacao/352)*100, "%" )
   escreval("")


Fimalgoritmo