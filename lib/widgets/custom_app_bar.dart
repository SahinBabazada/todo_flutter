import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String date;
  final int taskNumber;
  final Icon actionIcon;

  @override
  final Size preferredSize;

  const CustomAppBar({
    super.key,
    required this.date,
    required this.taskNumber,
    required this.actionIcon,
  }) : preferredSize = const Size.fromHeight(120.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: ListTile(
          title: Text(
            date,
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text('$taskNumber Tasks'),
          trailing: OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xFF35d588),
                shape: const CircleBorder()),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )),
    );
  }
}
