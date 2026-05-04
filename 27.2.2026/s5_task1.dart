import 'dart:io';

main(){
  List<int>nums=[];
  print("Enter Size Of List");
  int listSize=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=listSize;i++){
    print("Enter number $i");
    nums.add(int.parse(stdin.readLineSync()!));

  }
  for(int i =1 ;i<=nums.length;i++){
    print("Number $i = ${nums[i-1]}");
  }
  int sum=0;
  for(int i in nums){
    sum+=i;
  }print("Sum = $sum");
  double avg=sum/nums.length;
  print("Average = $avg");
  nums.sort();
  print("Max = ${nums[listSize-1]}");
  print("Min = ${nums[0]}");



}