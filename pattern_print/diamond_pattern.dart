
void main(){

  int n =5;
  for(int j=1; j <= n; j++){
    print(' ' * (n-j) + '*' * (2*j - 1));
  }
  for(int i = n-1; i >= 0; i --){
    print(' ' * (n - i) + '*' * (2*i - 1));
  }
}