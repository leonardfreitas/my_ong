import 'package:flutter/material.dart';
import 'package:my_ong/mocks/ongs.dart';
import 'package:my_ong/widgets/app_logo.dart';
import 'package:my_ong/widgets/ong_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppLogo('My ONG'),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: OngsMocks.ongs.map((e) => OngListTile(e)).toList(),
        ),
      ),
    );
  }
}
