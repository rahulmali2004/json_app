import 'package:flutter/material.dart';
import 'package:json/controller/geeta_controller.dart';
import 'package:json/utils/routes_utils.dart';
import 'package:json/views/component/list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bhagwat Geeta"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<GeetaController>(builder: (context, pro, _) {
          return ListView.builder(
            itemCount: 18,
            itemBuilder: (_, index) => Card(
              child: ListTile(
                title: Text(name[index]),
                leading: Text("${index + 1}"),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(MyRoutes.chap, arguments: index);
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
