float use = 14360;
int n = 15;

void setup(){
  int[] judge = {3, 5, 6, 10, 12, 15, 18, 20, 24, -1};
  float[] fee = {2.01, 3.35, 4.02, 6.70, 8.04, 10.05, 12.06, 13.40, 16.08, -1};
  float payment, frac, defo;
  int k = 0, first, diff, sum = 0;
  
  for(int i = 0; judge[i] <= n && i < judge.length-1; i++){
    k = i;
  }
  payment = use * (fee[k]/100) + use;
  defo = floor(payment);
  defo = floor(payment/n);
  frac = ((payment/n) - defo) * n;
  
  println(n + "回払い");
  for(int i = 0; i < n; i++){
    if(i == 0){
      first = round(defo+frac);
      sum += first;
      print(first);
    }else{
      sum += int(defo);
      print(int(defo));
    }
    if(i%12 == 11){
      println();
    }else if((i+1)!=n){
      print(" ,");
    }
  }
  println();
  
  diff = sum-int(use);
  println("use: " + int(use));
  println("Payment Amount: " + sum);
  println("diff: " + diff);
  exit();
}

void draw(){
  
}
