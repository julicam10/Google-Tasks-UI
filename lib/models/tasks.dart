import 'package:flutter/material.dart';
import 'package:google_tasks_ui/models/tasks_details.dart';

List<TasksDetails> tasksDetails = [
  TasksDetails(
    task: 'Code',
    reminder: 'Tomorrow 2:30 pm',
    importance: 'High',
    important: 'No',
    colorIcon: Colors.yellow,
    colorRemainder: Colors.blue,
    icon: Icons.star,
  ),
  TasksDetails(
    task: 'Code review',
    reminder: 'Next friday 5:30 pm',
    importance: 'High',
    important: 'Yes',
    colorIcon: const Color.fromRGBO(62, 115, 221, 1),
    colorRemainder: Colors.blue,
    icon: Icons.label_important,
  ),
  TasksDetails(
    task: 'Week meeting',
    reminder: '',
    importance: '',
    important: 'No',
    colorIcon: const Color.fromRGBO(62, 115, 221, 1),
    colorRemainder: Colors.grey,
    icon: Icons.label_important,
  ),
];
