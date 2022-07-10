import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'New Task',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 0.1,
            width: double.infinity,
            color: Colors.black,
          ),
          SizedBox(
            child: Container(
              height: 30.0,
            ),
          ),
          listTile(
            title: 'Task',
            leading: Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(color: Colors.black45),
              ),
            ),
          ),
          const listTile(
            title: 'Reminder',
            leading: Icon(
              Icons.timer,
              size: 30.0,
            ),
          ),
          const listTile(
            title: 'Importance',
            leading: Icon(
              Icons.priority_high,
              size: 30.0,
            ),
          ),
          const listTile(
            title: 'Important?',
            leading: Icon(
              Icons.star,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}

class listTile extends StatelessWidget {
  final Widget leading;
  final String title;
  const listTile({
    Key? key,
    required this.leading,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(fontSize: 20.0, color: Colors.black38),
      ),
    );
  }
}
