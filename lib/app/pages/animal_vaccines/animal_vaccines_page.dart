// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lupito/app/components/list_view_animal_vaccine_item_widget.dart';

// ignore: must_be_immutable
class AnimalVacinnesPage extends StatelessWidget {
  Color color;
  String imagePath;
  String animalName;

  AnimalVacinnesPage({
    Key? key,
    required this.color,
    required this.imagePath,
    required this.animalName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: color,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(imagePath),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.settings_outlined,
                            size: 40,
                            color: color,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/notifications');
                          },
                        )
                      ],
                    ),
                    Text(
                      animalName,
                      style: TextStyle(fontSize: 42, color: color),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                          'Vacinas Aplicadas',
                          style: TextStyle(fontSize: 32),
                        ),
                        Icon(Icons.download_rounded, size: 32),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                    ListViewAnimalVaccineItem(color: color),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
