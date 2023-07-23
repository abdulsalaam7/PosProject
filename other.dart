import 'dart:io';

List tasks = [];

void main() {
  print("==== Welcome to my Todo App ====");
  var isContinue = true;
  while (isContinue) {
    print("Press 1 for Add Task");
    print("Press 2 for View Task");
    print("Press 3 for Update Task");
    print("Press 4 for Delete Task");
    print("Press 5 or any key for exit");

    var userInput = stdin.readLineSync();
    if (userInput == "1") {
      addTask();
    } else if (userInput == "2") {
      viewTask();
    } else if (userInput == "3") {
      updateTask();
    } else if (userInput == "4") {
      deleteTask();
    } else {
      print("Program ended");
      isContinue = false;
    }
  }
}

addTask() {
  print("Enter Your Tasks Title");
  var taskTitle = stdin.readLineSync();
  print("Enter Your Tasks DueDate");
  var taskDueDate = stdin.readLineSync();

  Map task = {
    "taskTitle": taskTitle,
    "taskDueDate": taskDueDate,
  };
  tasks.add(task);
  print("Tasks Added -> $task");
}

viewTask() {
  print("=== SHARFABAD ===");
  print("Sharfabad Block 2 PECHS, Sharfabad, Karachi,Pakistan");
  print("Contact # : 01234567890");

  for (var i = 0; i < tasks.length; i++) {
    print("$i.My Tasks : ${tasks[i]}");
  }
}

updateTask() {}
deleteTask() {}
