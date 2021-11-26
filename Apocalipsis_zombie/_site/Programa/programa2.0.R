########################################
#####
##### Programa 
#####
##### Mitzi Naomi Camargo Arellano
#####
########################################

##Establecemos una función que sería "descubrelo" la cuál te imprime la pregunta,
#con sus respectivas respuestas, se establece un score y como resultado te da una suma.
#En la base de datos, se estableció un score para cada personaje

descubrelo <- function(){
  print("¿Qué actitud es más parecida a la tuya?") 
  print("1. Actuar primero y reflexionar después para poder seguir actuando")
  print("2. Reflexionar primero, actuar después para poder seguir reflexionando")
  hacer_test <- readline(prompt = "Escoge 1 o 2: ")
  hacer_test <- as.numeric(hacer_test)
  if (hacer_test == 1){
    score <- 2  #Se asigna un número de acuerdo a la respuesta
    score <- as.numeric(score) #Convertimos nuestro score a caracter númerico
  }else if (hacer_test == 2){
    score <- 1 #Se asigna un número de acuerdo a la respuesta
    score <- as.numeric(score) #Convertimos nuestro score a caracter númerico
  }
  print("En cuanto a la percepción, al recibir nueva información yo...")
  print("3. Confio más en mis sentidos y en mis datos, en lo tangible ")
  print("4. Confio en ideas generales, abstractas y en mi inspiración ")
  hacer_test2 <- readline(prompt = "Escoge 3 o 4: ")
  hacer_test2 <- as.numeric(hacer_test2)
  if (hacer_test2 == 3){
    score2 <- 7
    score2 <- as.numeric(score2)
  }else if (hacer_test2 == 4){
    score2 <- 3
    score2 <- as.numeric(score2)
  }
  print("Al tomar una decisión yo ...")
  print("5.Tomo distancia, analizo lo que es lógico y tomo una decisión razonable")
  print("6.Uso mi empatía, mediante un conseso de los involucrados, para estar contentos todos")
  hacer_test3 <- readline(prompt = "Escoge 5 o 6: ")
  hacer_test3 <- as.numeric(hacer_test3)
  if (hacer_test3 == 5){
    score3 <- 4
    score3 <- as.numeric(score3)
  }else if (hacer_test3 == 6){
    score3 <- 8
    score3 <- as.numeric(score3)
  }
  print("¿Cómo es mi relación con el mundo?")
  print("5.Me gusta que las cosas sean claras y me gusta tomar decisiones categoricas ")
  print("6.Me gustan las cosas espontáneas y fléxibles")
  hacer_test4 <- readline(prompt = "Escoge 7 o 8: ")
  hacer_test4 <- as.numeric(hacer_test4)
  if (hacer_test4 == 7){
    score4 <- 5
    score4 <- as.numeric(score4)
  }else if (hacer_test4 == 8){
    score4 <- 6
    score4 <- as.numeric(score4)
  }
  resultado <- score + score2 + score3 + score4   #Sumamos todos los scores para tener un total de ppuntuación
  return(print(paste("Tu puntuación es ",resultado)))
}

descubrelo() #Imprimimos la función

#__________________________
library(readxl) #
Libro <- read_excel(~/Bioinformatica/Apocalipsis_zombie/Base de datos/Libro.xlsx) #Cargamos la librería

## Ralizamos otra función llamada "puntuación 
#Con el resultado de los scores. De manera que te arroja los personajes de la base de datos,  
# con el mismo puntaje que obtuviste

puntuacion <- function(){
  ola <- readline(prompt = "Escribe tu resultado: ") 
  ola <- as.numeric(ola)
  if (ola == 23){
  personaje <- Libro[1,2]
  print(personaje)
  hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
  hola <- as.numeric(hola)
  if (hola == 1){
    print(Libro[1,])
  }
  }else if (ola == 22){
    personaje <- Libro[2:6,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[2,])
    }else if (hola == 2){
      print(Libro[3,])
    }else if (hola == 3){
      print(Libro[4,])
    }else if (hola == 4){
      print(Libro[5,])
    }else if (hola == 5){
      print(Libro[6,])
    }
  }else if (ola == 21){
    personaje <- Libro[7:8,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[7,])
    }else if (hola == 2){
      print(Libro[8,])
    }
  }else if (ola == 19){
    personaje <- Libro[9:10,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[9,])
    }else if (hola == 2){
      print(Libro[10,])
    }
  }else if (ola == 18){
    personaje <- Libro[11:18,2]
    print(personaje)
    hola <- readline(prompt =  "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[11,])
    }else if (hola == 2){
      print(Libro[12,])
    }else if (hola == 3){
      print(Libro[13,])
    }else if (hola == 4){
      print(Libro[14,])
    }else if (hola == 5){
      print(Libro[15,])
    }else if (hola == 6){
      print(Libro[16,])
    }else if (hola == 7){
      print(Libro[17,])
    }else if (hola == 8){
      print(Libro[18,])
    }
  }else if (ola == 17){
    personaje <- Libro[19:20,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[19,])
    }else if (hola == 2){
      print(Libro[20,])
    }
  }else if (ola == 16){
    personaje <- Libro[21,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[21,])
    }
  }else if (ola == 15){
    personaje <- Libro[22:24,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[22,])
    }else if (hola == 2){
      print(Libro[23,])
    }else if (hola == 3){
      print(Libro[24,])
    }
  }else if (ola == 14){
    personaje <- Libro[25:28,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[25,])
    }else if (hola == 2){
      print(Libro[26,])
    }else if (hola == 3){
      print(Libro[27,])
    }else if (hola == 4){
      print(Libro[28,])
    }
  }else if (ola == 13){
    personaje <- Libro[29:30,2]
    print(personaje)
    hola <- readline(prompt = "De los personajes anteriores escribe el numero de tu favorito: ")
    hola <- as.numeric(hola)
    if (hola == 1){
      print(Libro[29,])
    }else if (hola == 2){
      print(Libro[30,])
    }
}
}

#Te imprime los personajes según tu puntaje y te deja escoger uno

#_________________________

# Hacemos un ciclo while. Para que tu funciones corran automaticamente, después de responder cada una.

test <- 1
while (test == 1) {
 test <- readline(prompt = "¿Te gustaría saber a qué personajes te pareces más? responde 1 para comenzar: ")
  test <- as.numeric(test)
  print(descubrelo())
  print(puntuacion())
}

