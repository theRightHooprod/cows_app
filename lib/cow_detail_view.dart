import 'package:flutter/material.dart';

class CowDetailView extends StatelessWidget {
  const CowDetailView({
    super.key,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  final String name;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Column(
        children: [
          SelectableText(
            textAlign: TextAlign.justify,
            name,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 250,
            child: Hero(
              tag: name,
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(
            textAlign: TextAlign.justify,
            description,
          )
        ],
      ),
    );
  }
}
