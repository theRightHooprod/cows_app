import 'package:flutter/material.dart';

class CowContainer extends StatelessWidget {
  const CowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo,
      ),
      child: ListTile(
        leading: const CircleAvatar(),
        title: const Text(
          'Vaca',
          style: TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onTap: () {},
      ),
    );
  }
}
