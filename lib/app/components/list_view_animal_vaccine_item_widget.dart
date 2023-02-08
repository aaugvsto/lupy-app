import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListViewAnimalVaccineItem extends StatelessWidget {
  Color color;

  ListViewAnimalVaccineItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: color, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
