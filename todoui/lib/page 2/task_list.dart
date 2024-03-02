import 'package:flutter/material.dart';

import 'package:todoui/page%202/list.dart';
import 'package:todoui/page%202/task_item.dart';



class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.taskdone,
  });

  final List<ListOne> taskdone;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: taskdone.length,
      itemBuilder: (ctx, index) => TaskItem(taskdone[index]),
    );
  }
}