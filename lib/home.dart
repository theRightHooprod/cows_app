import 'package:flutter/material.dart';

import 'cow_container.dart';
import 'data/cow_info.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Column(
        children: [
          for (Map<String, dynamic> cowInfo in cows)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CowContainer(
                cowInfo: cowInfo,
              ),
            ),
        ],
      ),
    );
  }
}
