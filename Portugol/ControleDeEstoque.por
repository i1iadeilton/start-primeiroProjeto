programa {


    inclua biblioteca Calendario --> c
  funcao inicio() {
    inteiro  estoq1,estoq2, estoq3,opcao, opcao2, quantidade , soma
    inteiro dia, mes, ano, hora, minuto
   


    dia = c.dia_mes_atual()
    mes = c.mes_atual()
    ano = c.ano_atual()
    hora = c.hora_atual(formato_24h)
    minuto = c.minuto_atual(formato_24h)


   
   


    //Definindo o estoque inicial de cada produto
    escreva("\nOlá seja bem vindo ao Sistema Everalds\n")
    escreva("\n----------------------------------------------")
    escreva("\n Qual o estoque incial do Android? ")
    leia(estoq1)
    escreva("\n Qual o estoque incial do iPhone?")
    leia(estoq2)
    escreva("\n Qual o estoque incial do Xiaomi ")
    leia(estoq3)




      opcao = 1
      enquanto(opcao == 1){
      escreva("\n O que deseja: \n(-1Comprar / -2Vender / -3Encerrar o programa): ")
      leia(opcao)
   
    //Se for escolhido a opção compra
   
    se(opcao == 1){
     
      //Escolha de qual produto deseja comprar
      escreva("\nDigite o produto que deseja comprar\n (1-Android, 2-iPhone ou 3-Xiaomi):  ")
      leia(opcao2)
     
   
     escolha(opcao2){




      //caso 1 é prar comprar o produto 1, o usuário digitará a quantidade
      //e o sistema informará o novo estoque.
      caso 1:
        escreva("\nDigite a quantidade: ")
        leia(quantidade)
        escreva("\n----------------------------------------------\n")
        soma = estoq1 + quantidade
        escreva("Produto inserido com sucesso!   " , dia , "/", mes , "/", ano ,"  ",  hora , ":", minuto)
        escreva("\nAtualização de estoque: " , soma)
        estoq1 = soma
        escreva("\n----------------------------------------------\n")


        escreva("\nDeseja comprar ou vender mais alguma coisa? (1-Sim / 2- não): ")
        leia(opcao)
        pare




      //caso 2 é prar comprar o produto 2, o usuário digitará a quantidade
      //e o sistema informará o novo estoque.  
      caso 2:
        escreva("\nDigite a quantidade: ")
        leia(quantidade)
        escreva("\n----------------------------------------------\n")
        soma = estoq2 + quantidade
        escreva("Produto inserido com sucesso!   " , dia , "/", mes , "/", ano ,"  ",  hora , ":", minuto)
        escreva("\nAtualização de estoque: " , soma)
        escreva("\n----------------------------------------------\n")
        estoq2 = soma




        escreva("\nDeseja comprar ou vender mais alguma coisa? (1-sim / 2- não): ")
        leia(opcao)
        pare




      //caso 3 é prar comprar o produto 3, o usuário digitará a quantidade
      //e o sistema informará o novo estoque.
      caso 3:
        escreva("\nDigite a quantidade: ")
        leia(quantidade)
        escreva("\n----------------------------------------------\n")
        soma = estoq3 + quantidade
        escreva("Produto inserido com sucesso!   " , dia , "/", mes , "/", ano ,"  ",  hora , ":", minuto)
        escreva("\nAtualização de estoque: " , soma)
        estoq3 = soma
        escreva("\n----------------------------------------------\n")


        escreva("\nDeseja comprar ou vender mais alguma coisa? (1-sim / 2- não): ")
        leia(opcao)
        pare
      caso contrario:
      escreva("\nNúmero invalido, tente novamente\n")
     }
     }
     senao se(opcao == 2){




        //Escolha de qual produto deseja comprar
      escreva("\nDigite o produto que deseja vender (1-Android, 2-iPhone ou 3-Xiaomi):  ")
      leia(opcao2)
     
   
     escolha(opcao2){




      //caso 1 é prar vender o produto 1, o usuário digitará a quantidade
      //e o sistema informará o novo estoque.
      caso 1:
       
        escreva("\nDigite a quantidade: ")
        leia(quantidade)
        escreva("\n----------------------------------------------\n")
        soma = estoq1 - quantidade
       
        se( soma < quantidade){
          escreva("\nEstoque insuficiente ")  
        }senao{
        escreva("Produto retirado com sucesso!   " , dia , "/", mes , "/", ano ,"  ",  hora , ":", minuto)
        escreva("\nAtualização de estoque: " , soma)
        estoq1 = soma
        escreva("\n----------------------------------------------\n")
        }
       
        escreva("\nDeseja comprar ou vender mais alguma coisa? (1-sim / 2- não): ")
        leia(opcao)
        pare




      //caso 2 é prar comprar o produto 2, o usuário digitará a quantidade
      //e o sistema informará o novo estoque.  
      caso 2:
       
        escreva("\nDigite a quantidade: ")
        leia(quantidade)
        escreva("\n----------------------------------------------\n")
        soma = estoq2 - quantidade
       
        se( soma < quantidade){
          escreva("Estoque insuficiente ")  
        }senao{
        escreva("Produto retirado com sucesso!   " , dia , "/", mes , "/", ano ,"  ",  hora , ":", minuto)
        escreva("\nAtualização de estoque: " , soma)
        estoq2 = soma
        escreva("\n----------------------------------------------\n")
        }
       


        escreva("\nDeseja comprar ou vender mais alguma coisa? (1-sim / 2- não): ")
        leia(opcao)
        pare
     




      //caso 3 é prar comprar o produto 3, o usuário digitará a quantidade
      //e o sistema informará o novo estoque.
      caso 3:
        escreva("\nDigite a quantidade: ")
        leia(quantidade)
        soma = estoq3 - quantidade
       
        se( soma < quantidade){
          escreva("Estoque insuficiente ")  
        }senao {
        escreva("Produto retirado com sucesso!   " , dia , "/", mes , "/", ano ,"  ",  hora , ":", minuto)
        escreva("\nAtualização de estoque: " , soma)
        estoq3 = soma
        }
       




        escreva("\nDeseja comprar ou vender mais alguma coisa? (1-sim / 2- não): ")
        leia(opcao)
        pare
      caso contrario:
      escreva("\nNúmero invalido, tente novamente\n")
     




     }
     
     }
      }
       se(opcao == 3 ou opcao == 2){
      escreva("\n----------------------------------------------")
      escreva("\nObrigado por utilizar nosso sistema!")
      escreva("\n----------------------------------------------")
     }
  }
}


