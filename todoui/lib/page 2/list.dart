import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';


var date = DateTime.now();
var formatter = DateFormat.yMMMd().format(date);

const uuid = Uuid();

enum Category { ui, vent }

const categoryIcons = {
  Category.ui: Icon(Icons.arrow_back_rounded),
  Category.vent: Icons.flight_takeoff,
};

class ListOne {
  ListOne({required this.title, required this.date, required this.category})
      : id = uuid.v4();

  final DateTime date;
  final Category category;
  final String title;
  final String id;

  String get formattedDate {
    return formatter;
  }
}