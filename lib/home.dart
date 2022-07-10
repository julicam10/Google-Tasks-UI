import 'package:flutter/material.dart';
import 'package:google_tasks_ui/add_task.dart';
import 'package:google_tasks_ui/models/categories.dart';
import 'package:google_tasks_ui/models/categories_details.dart';
import 'package:google_tasks_ui/models/tasks.dart';
import 'package:google_tasks_ui/models/tasks_details.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Google Tasks',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                child: Image.asset('assets/img.png'),
              ))
        ],
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            CategoryDetails categories = categoryDetails[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListTile(
                title: Text(
                  categories.name,
                  style: const TextStyle(fontSize: 20.0),
                ),
                trailing: Icon(
                  categories.icon,
                  color: categories.color,
                ),
              ),
            );
          },
          itemCount: categoryDetails.length,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 0.1,
            width: double.infinity,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Personal',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Task(
            task: 'Code',
            reminder: 'Tomorrow at 2:30 pm',
            icon: Icons.star,
            color: Colors.yellow,
            size: 40.0,
            coloricon: Colors.blue,
          ),
          const Task(
            task: 'Code review',
            reminder: 'Next friday at 5:45 pm',
            icon: Icons.label_important,
            color: Colors.blue,
            coloricon: Colors.blue,
            size: 35.0,
          ),
          const Task(
            task: 'Week meeting',
            reminder: '',
            icon: Icons.label_important,
            color: Colors.blue,
            size: 35.0,
            coloricon: Colors.grey,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddTask(),
          ),
        ),
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.blue),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Task extends StatelessWidget {
  final String task;
  final IconData icon;
  final Color coloricon;
  final Color color;
  final String reminder;
  final double size;

  const Task({
    Key? key,
    required this.task,
    required this.icon,
    required this.color,
    required this.reminder,
    required this.size,
    required this.coloricon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
      child: ListTile(
        leading: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(color: Colors.black),
          ),
        ),
        title: Text(
          task,
          style: const TextStyle(color: Colors.black, fontSize: 20.0),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.timer,
              color: coloricon,
            ),
            Text(
              reminder,
              style: const TextStyle(color: Colors.blue),
            )
          ],
        ),
        trailing: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
