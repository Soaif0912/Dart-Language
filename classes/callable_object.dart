void main(){
   var x = Demo();
   print(x(2,3));

}

class Demo{
  call(int a, int b){
    return a+b;
  }
}
