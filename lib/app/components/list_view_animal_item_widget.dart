import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lupito/app/pages/animal_menu/animal_vaccines_page.dart';

// ignore: must_be_immutable
class ListViewAnimalItem extends StatefulWidget {
  Color color;
  Color? borderColor;
  double? borderWidth;
  StrokeAlign? strokeAlign;
  String icon;
  String animalName;
  String sex;
  double age;
  String breed;
  String imagePath;
  bool calcVacinas;

  ListViewAnimalItem({
    Key? key,
    required this.color,
    this.borderColor,
    this.borderWidth,
    this.strokeAlign,
    required this.imagePath,
    required this.breed,
    required this.sex,
    required this.age,
    required this.icon,
    required this.animalName,
    required this.calcVacinas,
  }) : super(key: key);

  @override
  State<ListViewAnimalItem> createState() => _ListViewAnimalItem();
}

class _ListViewAnimalItem extends State<ListViewAnimalItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () => openAnimalVaccinesPage(
          widget.color,
          widget.imagePath,
          widget.animalName.split(' ').first,
          widget.age,
        ),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(29),
              boxShadow: [
                BoxShadow(
                  color: widget.color,
                  spreadRadius: 1.8,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 95,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(widget.imagePath),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          widget.animalName.split(' ').first,
                          style: const TextStyle(
                              fontSize: 38, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nome completo:\n${widget.animalName}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Raça:\n${widget.breed}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Idade:\n${widget.age} anos',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Sexo:\n${widget.sex}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 6),
                    ],
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Center(
                    child: Text(
                      widget.calcVacinas
                          ? 'Vacinas próximas'
                          : 'Sem vacinas proximas',
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  openAnimalVaccinesPage(
      Color color, String imagePath, String animalName, double animalAge) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AnimalVacinnesPage(
          color: color,
          imagePath: imagePath,
          animalName: animalName,
          animalAge: animalAge.toString(),
        ),
      ),
    );
  }
}
