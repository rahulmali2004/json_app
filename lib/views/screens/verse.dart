import 'package:flutter/material.dart';
import 'package:json/controller/geeta_controller.dart';
import 'package:provider/provider.dart';

class Verse extends StatelessWidget {
  const Verse({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    int j = index;
    return Scaffold(
      appBar: AppBar(
        title: Text("Verse $index"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ),
      body: Consumer<GeetaController>(
        builder: (_, pro, __) => ListView.builder(
          itemCount: (pro.allverse.isEmpty) ? 1 : pro.allverse.length,
          itemBuilder: (_, index) {
            if (pro.allverse2[index].verseNumber == j) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Text(pro.allverse[0].text),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Meaning ",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
