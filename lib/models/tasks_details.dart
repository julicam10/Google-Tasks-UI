import 'package:flutter/material.dart';

class TasksDetails {
  final String task;
  final String reminder;
  final Color colorRemainder;
  final IconData icon;
  final Color colorIcon;
  final String importance;
  final String important;

  TasksDetails({
    required this.colorRemainder,
    required this.icon,
    required this.colorIcon,
    required this.task,
    required this.reminder,
    required this.importance,
    required this.important,
  });
}
