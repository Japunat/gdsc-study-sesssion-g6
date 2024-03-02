import 'package:flutter/material.dart';
import 'package:todoprovider/page%202/list.dart';


class Project extends ChangeNotifier {
  DateTime _selectedDate;

  Project({required DateTime initialDate}) : _selectedDate = initialDate ;

  DateTime get selectedDate => _selectedDate;

  void updateSelectedDate(DateTime newDate) {
    _selectedDate = newDate;
    notifyListeners();
  }
 
  List<ListOne> tasks = [];
 List<ListOne> get allTasks => tasks;
 
  void addTypes(ListOne task) {
    tasks.add(task);
    notifyListeners();
  }
  
  

}