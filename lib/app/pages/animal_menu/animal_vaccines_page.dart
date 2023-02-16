// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lupito/app/components/custom_button_widget.dart';

// ignore: must_be_immutable
class AnimalVacinnesPage extends StatelessWidget {
  Color color;
  String imagePath;
  String animalName;
  String animalAge;

  AnimalVacinnesPage({
    Key? key,
    required this.color,
    required this.imagePath,
    required this.animalName,
    required this.animalAge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: color),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: CircleAvatar(
                          backgroundColor: color,
                          child: CircleAvatar(
                            radius: 56,
                            backgroundImage: AssetImage(imagePath),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$animalName\n$animalAge ano(s)',
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontSize: 48),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomButtonWidget(
                                title: 'Meus Dados',
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomButtonWidget(
                                title: 'Minhas Vacinas',
                                icon: Icons.vaccines,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomButtonWidget(
                                title: 'Clinícas & Pet Shops',
                                icon: Icons.house,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomButtonWidget(
                                title: 'Coleira QRCode',
                                icon: Icons.qr_code,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
