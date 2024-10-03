import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myToDoData = Hive.box('myData');

  // run this method if this is the 1st time ever opening this app
  void createData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myToDoData.get("TODOLIST");
  }

  // update the database
  void updateData() {
    _myToDoData.put("TODOLIST", toDoList);
  }
}
