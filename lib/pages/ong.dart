import 'package:flutter/material.dart';
import 'package:my_ong/models/ong.dart';
import 'package:my_ong/widgets/app_logo.dart';

class OngPage extends StatelessWidget {
  const OngPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ong = ModalRoute.of(context)!.settings.arguments as Ong;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppLogo(ong.name),
      ),
      body: Center(
        child: Text(ong.description),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.back_hand),
      ),
    );
  }
}
