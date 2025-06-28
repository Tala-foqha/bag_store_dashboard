// core/helper_function/build_error_bar.dart
import 'package:flutter/material.dart';

void buildErrorBar(BuildContext context, String message) {
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

