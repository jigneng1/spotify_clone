import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.widget,
    required this.title,
  });

  final AlbumView widget;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(
              image: widget.image,
              fit: BoxFit.cover,
              width: 48,
              height: 48,
            ),
            const SizedBox(width: 16),
            Text(title)
          ],
        ),
        const Icon(Icons.more_horiz)
      ],
    );
  }
}
