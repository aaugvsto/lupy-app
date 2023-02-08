import 'package:lupito/app/components/list_view_animal_item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> _fakeBd = [
    {
      'name': 'Pierre Gomes da Silva',
      'icon': '🐶',
      'age': 0.4,
      'sex': 'Macho',
      'vacinasProximas': true,
      'color': Colors.blue[900],
      'imagePath': 'assets/images/cachorro.jpg',
      'breed': 'Sem raça definida'
    },
    {
      'name': 'Garfield',
      'icon': '🐱',
      'age': 0.4,
      'sex': 'Macho',
      'vacinasProximas': false,
      'color': Colors.green,
      'imagePath': 'assets/images/gato.jpg',
      'breed': 'Sem raça definida'
    },
    {
      'name': 'Tião',
      'icon': '🐱',
      'age': 0.4,
      'sex': 'Macho',
      'vacinasProximas': true,
      'color': Colors.amber,
      'imagePath': 'assets/images/gato.jpg',
      'breed': 'Sem raça definida'
    },
    {
      'name': 'Thor',
      'icon': '🐶',
      'age': 0.4,
      'sex': 'Macho',
      'vacinasProximas': true,
      'color': Colors.black87,
      'imagePath': 'assets/images/cachorro.jpg',
      'breed': 'Sem raça definida'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, size: 32),
                      onPressed: () => const Drawer(),
                    ),
                    Text(
                      'Lupy',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.blue[800],
                      ),
                    ),
                    IconButton(
                        icon:
                            const Icon(Icons.notifications_outlined, size: 32),
                        onPressed: () {
                          Navigator.pushNamed(context, '/notifications');
                        })
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (dynamic item in _fakeBd)
                      ListViewAnimalItem(
                        animalName: item['name'],
                        calcVacinas: item['vacinasProximas'],
                        icon: item['icon'],
                        color: item['color'],
                        age: item['age'],
                        sex: item['sex'],
                        imagePath: item['imagePath'],
                        breed: item['breed'],
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
