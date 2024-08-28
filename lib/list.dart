void main(){

  var coolDrinkTypes = ['coal' , 'mango' , 'pepsi' , 'sprite'];

  print(coolDrinkTypes);
  print(coolDrinkTypes[1]);
  print(coolDrinkTypes.length);
  print(coolDrinkTypes.isEmpty);
  print(coolDrinkTypes.isNotEmpty);

  coolDrinkTypes.add('Sting');
  print(coolDrinkTypes);
  coolDrinkTypes.addAll(['lime' , 'lemon']);
  print(coolDrinkTypes);
  coolDrinkTypes.insert(2, 'sugar cane');
  print(coolDrinkTypes);

  coolDrinkTypes.remove('sugar cane');
  print(coolDrinkTypes);
  coolDrinkTypes.removeAt(0);
  print(coolDrinkTypes);


  //type annotations in lists

  List <String> animals = ['Cat ' , 'Lion' ];
  //or
  var animlas2 = <String> ['Tiger' , "mouse" ];

}