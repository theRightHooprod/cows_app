import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'page_navigator_cubit/page_navigator_cubit.dart';

class CowContainer extends StatelessWidget {
  const CowContainer({super.key, required this.cowInfo});

  final Map<String, dynamic> cowInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo,
      ),
      child: ListTile(
        leading: Hero(
          tag: cowInfo['name'],
          child: CircleAvatar(
            backgroundImage: NetworkImage(cowInfo['image']),
          ),
        ),
        title: Text(
          cowInfo['name'],
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onTap: () {
          context.read<PageNavigatorCubit>().showCowInDetail(id: cowInfo['id']);
        },
      ),
    );
  }
}
