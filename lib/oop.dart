void main(){
  //oops concepts
  //-polymorphism = it is an abitly of an object to take many forms.
  Animals cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();
  //here same object can be used for calling two different methods.

  //-inheritance
  //extending and implementing methods and features of other classes.
  //-abstraction
  //done
  //-encapsulation
  //private and public varibale for data protection : _name or name.
}
//polymorphism

abstract class Animals{
  sound(){
print("Animal making a sound");
}
}
class Dog extends Animals{
  @override
  sound() {
    print("Dog making a sound");
  }
}
class Cat extends Animals{
  @override
  sound() {
    print("Cat making a sound");
  }
}