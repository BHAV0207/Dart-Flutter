void main(){

  int a = 10;
  int b = 5;

  print("Addition: ${add(a, b)}");
  print("Subtraction: ${sub(a, b)}");
  print("Multiplication: ${mul(a, b)}");
  print("Division: ${div(a, b)}");

}

int add(int a , int b){
  return a+b;
}

int sub(int a , int b){
  return a-b;
}

int mul(int a , int b){
  return a*b;
}
double div(int a , int b){

  if(b == 0){
    print("Error: Division by zero");
    return 0;
  }
  return a/b;
}

