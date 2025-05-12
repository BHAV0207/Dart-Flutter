class Student{
  String name;
  List<int> marks;

  Student(this.name ,  this.marks);

  double CalculatingAverage(){
    int total = marks.reduce((a , b) => a+b);
    double avg = total/marks.length;

    return avg;
  }

  String GradeCalcuation(){
    double avg = CalculatingAverage();

    if(avg >= 90){
      return "A";
    }
    else if (avg > 60 && avg < 90 ){
      return 'B';
    }else{
      return "C";
    }
  }

  void PrintDetails(){
    print(name);
    print('marks ${marks}');
  }
}


void main(){

  List<Student> student = [
    Student("Bhav" ,  [90 ,100 ,20]),
    Student("nahs" ,  [90 ,100 ,20]),
    Student("ruchir" ,  [90 ,100 ,20]),
    Student("honey" ,  [90 ,100 ,20]),
    Student("aryan" ,  [90 ,100 ,20]),
    Student("cheeku" ,  [90 ,100 ,20])
  ];
 
 for(int i =0 ;i<student.length ;i++){
  student[i].PrintDetails();
 }  
}