import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AlbumView(
                      image: image,
                      label: label,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: image, width: 150, height: 150, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
