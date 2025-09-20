import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget _columnStat(IconData icon, String label, String value, String pmatches, {Color color = Colors.white}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconTheme(
        data: IconThemeData(color: color, size: 28),
        child: FaIcon(icon),
      ),
      SizedBox(height: 6),
      Text(label, style: TextStyle(fontSize: 12)),
      Text(value, style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
      Text(pmatches, style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
    ],
  );
}
