// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class GrayscaleColorFiltered extends StatefulWidget {
  const GrayscaleColorFiltered({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
  });

  final double? width;
  final double? height;
  final String imageUrl;

  @override
  State<GrayscaleColorFiltered> createState() => _GrayscaleColorFilteredState();
}

class _GrayscaleColorFilteredState extends State<GrayscaleColorFiltered> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.grey,
          BlendMode.saturation, // Creates the grayscale effect
        ),
        child: Image.network(
          // Use Image.asset if you use local assets
          widget.imageUrl,
          fit: BoxFit.cover, // Adjust the image fit as necessary
        ),
      ),
    );
  }
}
