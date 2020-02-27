function printInfo() {
  let movie = document.getElementById("movie").value;
  let name = document.getElementById("name").value;
  let childCount = document.getElementById("childCount").value * 1;
  let adultCount = document.getElementById("adultCount").value * 1;
  let total = 0;
  let sentence = "";

  let price = (document.getElementById('childTickets').value * childCount) + (document.getElementById('adultTickets').value * adultCount); 

  sentence += name + " purchased " + childCount + " child ticket(s) to \"";
  sentence += movie + "\" for $";
  sentence += price;
  total += price;

  price = document.getElementById('adultTickets').value * adultCount;
  sentence += "and " + adultCount + " Adult ticket(s) to \"";
  sentence += movie + "\" for $";
  sentence += price + '<br>';
  total += price;

  sentence += "<br>";
  sentence += 'Total cost: $' + total;
  document.getElementById("receipt").innerHTML = sentence;
}