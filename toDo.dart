class toDo {
  Map<String , bool> Tasks = {};

  toDo(this.Tasks);

  void addTask (String title) {
    Tasks[title] = false;
    print("added task ${title}");
  }

  void MarkDone(String title){
    if(Tasks.containsKey(title)){
      Tasks[title] = true;
       print("☑️ Marked as done: '$title'");
    }else{
      print("⚠️ Task not found: '$title'");
    }
  }

  void delete(String title){
    if(Tasks.containsKey(title)){
      Tasks.remove(title);
      print("task removed");
    }
  }

  void printTasks() {
    print("\n📋 Your To-Do List:");
    if (Tasks.isEmpty) {
      print("No tasks yet.");
      return;
    }

    int i = 1;
    Tasks.forEach((title, isDone) {
      print("$i. [${isDone ? 'x' : ' '}] $title");
      i++;
    });
    print("");
  }

}

void main() {
  toDo todo= toDo({});

  todo.addTask("Finish Dart lesson");
  todo.addTask("Start Flutter project");
  todo.addTask("Go for a walk");

  todo.MarkDone("Start Flutter project");
  todo.delete("Go for a walk");

  todo.printTasks();
}