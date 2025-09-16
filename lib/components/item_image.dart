import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://m.media-amazon.com/images/M/MV5BN2I0YWU3ZGEtNDgzOC00Y2IwLTg1MTQtYjMxMmVhNDE0OGQxXkEyXkFqcGdeQXVyMjI5MjU5OTI@._V1_.jpg",
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
