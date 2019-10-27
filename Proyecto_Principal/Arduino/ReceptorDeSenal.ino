int contador = 0;
int y=1; //marcador
void setup() {
   pinMode(2, INPUT_PULLUP);  
   Serial.begin(9600); 
}

void loop() {
  int estadoBoton = digitalRead(13); 
  
  if(estadoBoton == 1 ){  
    contador++;
    Serial.print("Numero del conteo: ");
    Serial.println(contador);
    int regreso= regreso=ultimo_conteo(contador);}
  else{
   y=1;}
}

int ultimo_conteo(int conteo){
  
   if (conteo<=6){
        switch(conteo){
        case 1: Serial.print("Hola Mundo, primera opcion");
        return conteo;
        break;
        case 2: Serial.print("Hola Mundo2, segunda  opcion");
        return conteo;
        break;
        case 3: Serial.print("Hola Mundo3, tercera  opcion");
         return conteo;
        break;
        default: 
          Serial.print("No hay mas opciones");
          break;
        }
    }
    else{
      conteo=0;
      return conteo;}
  }
