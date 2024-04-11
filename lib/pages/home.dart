import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ong/utils/app_routes.dart';
import 'package:my_ong/widgets/app_logo.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.contact);
                },
                child: const Text('Contact'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.ong);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
