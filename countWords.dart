void main(){
  String str = "dart is a good language for The good is a dart";
  print(count(str));
}

Map count(String str) {
  List<String> list =  str.split(" ");
  Map<String ,int> map = {};

  for(String word in list){
    if(map.containsKey(word)){
      map[word] = map[word]! +1;
    }
    else{
      map[word] = 1;
    }
  }


  return map;

}