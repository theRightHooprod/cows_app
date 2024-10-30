import 'package:flutter/material.dart';

class CowDetailView extends StatelessWidget {
  const CowDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Placeholder(),
          ),
          SizedBox(
            height: 10,
          ),
          SelectableText(
              textAlign: TextAlign.justify,
              'Quam rem quia voluptas adipisci magnam. Eum omnis dolore est. Adipisci molestiae quaerat dolores at voluptas ut. Occaecati et hic laborum molestias. Quisquam ut non ratione optio. Et id omnis ut accusamus possimus et accusamus.')
        ],
      ),
    );
  }
}
