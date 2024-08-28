void main(){
 Cookie cookie = Cookie('circle' , 8.90);
}

class Cookie{
  String shape;
  double size;
  Cookie(this.shape ,this.size){
    baking();

  }

void baking(){
  print("Baking has started");
}
bool isCooling(){
  return false;
}
}