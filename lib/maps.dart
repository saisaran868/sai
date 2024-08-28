void main(){
  var map1= {
    'name' : 'saisaran' ,
    'age'  : 22,
    'qualification' : 'Btech',
  };
  print(map1);


  Map  <String , dynamic> map2  = {};
  //or
  var map3 = <String , dynamic> {};

  //
  var name = map1 ['name'];

  print(name);

  var age = map1 ['age'];
  print(age);

  map1 ['CGPA'] = 8.9;
  map1 ['age'] = 23;

  print(map1);

  for(var data in map1.entries){
    print('${data.key}    :  ${data.value}');
  }

}