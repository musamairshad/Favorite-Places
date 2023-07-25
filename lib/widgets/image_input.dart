import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  void _takePicture() {
    // Will be added later...
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      height: 250,
      width: double.infinity,
      // alignment: Alignment.center, // Doesn't create any effect.
      child: TextButton.icon(
        onPressed: _takePicture,
        icon: const Icon(Icons.camera_alt_rounded),
        label: const Text('Take Picture'),
      ),
    );
  }
}
