void main(){

  //Question 1
  var salesFigures = [
    1235.30,
    1080.25 ,
    1967.50 ,
    1530.69 ,
    1325.75 ,
    3456.09 ,
    2345.27 ,
    1234.23 ,
    1000.50 ,
    1256.96 ,
    1876.00 ,
    14900.89];
  var salesMonths = [
    'Jan' ,
    'feb' ,
    'march',
    'apirl',
    'may' ,
    'june' ,
    'july' ,
    'aug' ,
    'sep' ,
    'ocb' ,
    'nov' ,
    'dec'];
  var totalSales = 0.00;
  var highestValue = salesFigures[0];
  for (int i = 0; i <salesFigures.length; i++){
    totalSales = salesFigures[i] + totalSales ;

    if(salesFigures[i] > highestValue ){
      highestValue = salesFigures[i];
    }
  }
  var index = salesFigures.indexOf(highestValue);
  print("Toatal sales for this year are : $totalSales Rs");
  print("The highest sale is Rs $highestValue in Month ${salesMonths[index]}");
//question 2
var depDev = {8688688680 , 9908097831 , 9908310155 , 9333004444};
var depAws = {9701010386 , 9381811505 , 9848234610 ,8688688680};

var newDep = depDev.union(depAws);
  print("\n");

for(int i =0; i<newDep.length; i++){
  print("Hey good morning user with mobile number ${newDep.elementAt(i)}");
}

//question 3

var map1 = {
  'Student' : 'paul',
  'Marks' : 50,
};

  var map2 = {
    'Student' : 'sai',
    'Marks' : 85,
  };

  var map3 = {
    'Student' : 'siva',
    'Marks' : 45,
  };
  print("\n");
  var marks = [map1 , map2 ,map3];
  var n = marks.length;
  double avgMarks = 0;

  for(int i = 0; i<marks.length ; i++){
    var student = marks.elementAt(i)['Student'];
    var score = marks.elementAt(i)['Marks'];
   print('$student has a marks of $score %');
  avgMarks += score as int;

  }
  avgMarks = avgMarks/n;
print("The average of the marks is : $avgMarks %");
}