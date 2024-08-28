void main(){


  // practice of control flow
  var units = 1;
  var amount , totalraise , totalamount;
  totalraise = 20;
  if(units>=0 && units <=50){
    amount = units*0.50;
  }
  else if(units>50 && units<=150){
    amount = 25+ (units - 50) * 0.75;
  }
  else if(units>150 && units<=250){
    amount = 25 + 75 +(units - 150) * 1.20;
  }
  else if(units>250){
    amount = 25+75+120+(units-250)*1.50;
  }
  else{
    print("Invaid Units Entered");

  }

  totalamount = (amount)+((amount*totalraise)/100);
  print("Total amount = $totalamount rs");
}