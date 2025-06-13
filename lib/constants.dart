import 'package:flutter/material.dart';

// Light theme palette with better contrast
const primaryColor = Color(0xFF4C7BF2); // accent color
const secondaryColor = Color(0xFFFFFFFF); // card backgrounds
const darkColor = Color(0xFFD1D5DB); // subtle borders & dividers
const bodyTextColor = Color(0xFF333333); // high contrast text
const bgColor = Color(0xFFF5F7FA); // page background

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1); // we use it on our animation
const maxWidth = 1440.0; // max width of our web

/// Default shadow used on cards to provide separation from the background
const List<BoxShadow> kDefaultCardShadow = [
  BoxShadow(
    offset: Offset(0, 4),
    blurRadius: 12,
    color: Color(0x1A000000), // 10% opacity black
  ),
];
