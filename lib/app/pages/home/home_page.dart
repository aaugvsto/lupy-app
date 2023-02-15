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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text('Lupy'),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.blueAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Augusto Assis",
                style: TextStyle(fontSize: 24),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              currentAccountPictureSize: Size.fromRadius(42),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            children: [
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
