import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget? child;
  final bool isLoading;

  const LoadingOverlay({Key? key, required this.child, required this.isLoading})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return child as Widget;
  }
}
