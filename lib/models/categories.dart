import 'package:flutter/material.dart';
import 'package:google_tasks_ui/models/categories_details.dart';

List<CategoryDetails> categoryDetails = [
  CategoryDetails(
    name: 'Important',
    color: Color.fromRGBO(255, 216, 65, 1),
    icon: Icons.star,
  ),
  CategoryDetails(
    name: 'Personal',
    color: Color.fromRGBO(62, 115, 221, 1),
    icon: Icons.label_important,
  ),
  CategoryDetails(
    name: 'Work',
    color: Color.fromRGBO(62, 115, 221, 1),
    icon: Icons.label_important,
  ),
  CategoryDetails(
    name: 'University',
    color: Color.fromRGBO(62, 115, 221, 1),
    icon: Icons.label_important,
  ),
  CategoryDetails(
    name: 'Buy-list',
    color: Color.fromRGBO(62, 115, 221, 1),
    icon: Icons.label_important,
  ),
];
