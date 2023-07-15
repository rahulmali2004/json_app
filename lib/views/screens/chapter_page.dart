import 'package:flutter/material.dart';
import 'package:json/controller/geeta_controller.dart';
import 'package:json/utils/routes_utils.dart';
import 'package:provider/provider.dart';

class ChapterPage extends StatelessWidget {
  const ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    int i = index + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter $i"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<GeetaController>(builder: (context, pro, _) {
          return ListView.builder(
              itemCount: pro.allverse.length,
              itemBuilder: (_, index) {
                if (pro.allverse[index].chapter_id == i) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed(MyRoutes.verse,
                            arguments: pro.allverse[index].verse_order);
                      },
                      title: Text(
                        pro.allverse[index].text,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      leading: Text("${index + 1}"),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              });
        }),
      ),
    );
  }
}
