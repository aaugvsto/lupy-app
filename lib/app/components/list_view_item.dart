import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListViewItem extends StatefulWidget {
  Color? color;
  Color? borderColor;
  double? borderWidth;
  StrokeAlign? strokeAlign;
  String icon;
  String animalName;
  String sex;
  double age;
  String breed;
  String? imagePath;
  bool calcVacinas;

  ListViewItem({
    Key? key,
    this.color,
    this.borderColor,
    this.borderWidth,
    this.strokeAlign,
    this.imagePath,
    required this.breed,
    required this.sex,
    required this.age,
    required this.icon,
    required this.animalName,
    required this.calcVacinas,
  }) : super(key: key);

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 105,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.white,
                          backgroundImage: widget.imagePath != null
                              ? AssetImage(widget.imagePath!)
                              : null,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        widget.animalName.split(' ').first,
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome completo:\n${widget.animalName}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Raça:\n${widget.breed}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Idade:\n${widget.age} anos',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Sexo:\n${widget.sex}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
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
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
