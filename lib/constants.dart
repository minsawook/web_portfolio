import 'package:flutter/material.dart';

// Light theme palette with better contrast
// Updated palette for better readability
const primaryColor = Color(0xFF0066FF); // accent color
const secondaryColor = Color(0xFFFFFFFF); // card backgrounds
const darkColor = Color(0xFFE5E7EB); // subtle borders & dividers
const bodyTextColor = Color(0xFF202124); // high contrast text
const bgColor = Color(0xFFF9FAFB); // page background

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1); // we use it on our animation
const maxWidth = 1440.0; // max width of our web

/// Default shadow used on cards to provide separation from the background
const List<BoxShadow> kDefaultCardShadow = [
  BoxShadow(
    offset: Offset(0, 8),
    blurRadius: 24,
    color: Color(0x33000000), // 20% opacity black
  ),
];
