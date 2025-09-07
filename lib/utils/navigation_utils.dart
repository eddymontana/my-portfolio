import'package:flutter/material.dart';

/// A utility function to scroll a view to a specific section defined by a GlobalKey.
/// This promotes code reusability by keeping navigation logic separate from widget state.
void scrollToSection(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      alignment: 0.0,
    );
  }
}
