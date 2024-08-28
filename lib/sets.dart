void main(){
  var cars2 = {'Honda' , 'Audi'  , 'Suzixi', 'Ford'};
  print(cars2);
  //sets
  var cars = {'Hero' , 'Audi'  , 'Swift', 'Tata'};
  print(cars);
  
  print(cars.elementAt(1));

  print(cars.union(cars2));

  print(cars.intersection(cars2));

  print(cars.difference(cars2));
  print(cars2.difference(cars));
}