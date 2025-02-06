import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            imageUrl: urlImage,
            fit: BoxFit.fill,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
  }
}

// Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(16),
        //   color: Colors.red,
        //   image:  DecorationImage(
        //     fit: BoxFit.fill,
        //     image: NetworkImage(
        //       urlImage,
//             ),
//           ),
//         ),
//       ),