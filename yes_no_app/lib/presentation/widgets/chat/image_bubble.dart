import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
  final String imageUrl;

  const ImageBubble(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit
              .cover, // Hace que la imagen abarque todo lo especificado sin deformarse.
          // Builder: Algo que se esta construyendo en tiempo de ejecucion.
          loadingBuilder: (context, child, loadingProagress) {
            // Si la imagen ya cargo por completo, regresar la imagen
            if (loadingProagress == null) return child;
            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: const Text('Image is loading ....'),
            );
          },
        ));
  }
}
