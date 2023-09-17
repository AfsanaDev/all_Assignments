void calculate( int startValue, int endValue, Function fn){
  for(int i =startValue;i<=endValue; i++ ){
    fn(i);
  }

}
void square(int i){
  print(i*i);
}

void main(){
  calculate(1, 5, square);
  calculate(2, 6, (int i){
    print(i*i*i);
  });

}
