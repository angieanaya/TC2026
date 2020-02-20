function contador(arrayNum){
    var  pos = 0, neg = 0, nulo = 0;
        for (var i=0; i<arrayNum.length; i++){
            if (arrayNum[i] == 0){
                nulo ++;
            }
            if (arrayNum[i] > 0){
                pos++;
            }
            if (arrayNum[i] < 0){
                neg++;
            }
        }
  alert("El arreglo de números ingresado: " + arrayNum + "\nNúmeros positivos: " + pos + "\nNúmeros negativos: " + neg + "\nCantidad de ceros: " + nulo);
}
