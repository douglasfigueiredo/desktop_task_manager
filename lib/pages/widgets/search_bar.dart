import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(FeatherIcons.search, color: Color(0xFFD1D2D6)),
        filled: true,
        fillColor: Color(0xFF3C3F54),
        labelText: 'Search Task or Project... ',
        labelStyle: TextStyle(color: Color(0xFFD1D2D6)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
