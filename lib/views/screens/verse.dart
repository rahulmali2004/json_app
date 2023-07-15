import 'package:flutter/material.dart';
import 'package:json/controller/geeta_controller.dart';
import 'package:provider/provider.dart';

class Verse extends StatelessWidget {
  const Verse({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    int j = index - 1;
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<GeetaController>(
          builder: (_, pro, __) => ListView.builder(
            itemCount: pro.allverse2.length,
            itemBuilder: (_, index) {
              print("---------------");
              if (pro.allverse2[index].verseNumber == j &&
                  pro.allverse2[index].lang == pro.lan2 &&
                  (pro.allverse2[index].authorName == pro.author_name)) {
                print("---------------");
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Text(pro.allverse[j].text),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Meaning ",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: Text(pro.allverse2[index].description),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.greenAccent),
                          child: TextButton(
                            onPressed: () {
                              pro.changeLan(
                                  lan: 'hindi', author: 'Swami Ramsukhdas');
                            },
                            child: const Text("Hindi"),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.greenAccent),
                          child: TextButton(
                            onPressed: () {
                              pro.changeLan(
                                  lan: 'english', author: 'Swami Sivananda');
                            },
                            child: const Text("english"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
