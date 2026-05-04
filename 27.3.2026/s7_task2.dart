import 'dart:io';

main(){
List <int>myList=[];
getList(myList);
showList(myList);
print("Sum :${sumList(myList)}");
print("Average :${avgList(myList)}");
Map maxAndMinMap=maxAndMin(myList);
int max=maxAndMinMap["max"];
print("Max : $max");
int min=maxAndMinMap["min"];
print("Min : $min");

}
void getList(List list){
  print("Enter Size Of List");
  int listSize=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=listSize;i++){
    print("Enter number $i");
    list.add(int.parse(stdin.readLineSync()!));

  }

}
void showList(List list){
  for(int i=0;i<list.length;i++){
    print("Number ${i+1} = ${list[i]}");
  }

}
int sumList(List list){
  int sum=0;
  for(int i in list){
    sum+=i;

}
return sum;
}
double avgList(List list){
  int sum=0;
  for(int i in list){
    sum+=i;

  }
  double avg=sum/list.length;
  return avg;
}
Map maxAndMin (List list){

  list.sort();
  Map<String,int>maxAndMinMap={"max":list.last,"min":list.first};
  return maxAndMinMap;
}