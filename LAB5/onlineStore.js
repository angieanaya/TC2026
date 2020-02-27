function cupcakes() {
    
    let redVelvet = document.getElementById("redVelvet").value;
    let salted = document.getElementById("salted").value;
    let smores = document.getElementById("smores").value;
    
    let totalVelvet = 0;
    let totalSalted = 0;
    let totalSmores = 0;


    //PROMOCIONES
    if(redVelvet > 11){
        totalVelvet = redVelvet*40;
    }else totalVelvet = redVelvet*48;
    
    if(salted > 11){
        totalSalted = salted*45;
    }else totalSalted = salted*53;
    
    if(smores >11){
        totalSmores = smores*42;
    }else totalSmores = smores*50;
        
    let subtotal = totalSmores + totalSalted + totalVelvet;
    let taxes = subtotal*(.16);
    let total = subtotal+taxes;

    document.getElementById("subtotal").innerHTML = "Subtotal: $ "+ subtotal.toFixed(2);
    document.getElementById("taxes").innerHTML = "Taxes: $ " + taxes.toFixed(2);
    document.getElementById("total").innerHTML = "Total: $ " + total.toFixed(2);
}

	document.getElementById("checkout").onclick = cupcakes;