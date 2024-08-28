void main(){
  //Mixins
  //it mixes with the classes.
Human human = Human();
human.prHeghit();
human.prWeghit();
}
mixin Weghit {
  double weghit = 83.50;

}

mixin Heghit {
  double heghit = 5.9; //feet.incs


}

class Human with Weghit ,Heghit{

  void prHeghit(){
    heghit = 5.11;
    print(heghit);
}
void prWeghit(){
    print(weghit);
}
}