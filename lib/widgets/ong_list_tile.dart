import 'package:flutter/material.dart';
import 'package:my_ong/models/ong.dart';
import 'package:my_ong/utils/app_routes.dart';

class OngListTile extends StatelessWidget {
  final Ong ong;

  const OngListTile(this.ong, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset(ong.logo),
      ),
      title: Text(ong.name),
      subtitle: Text(
        '${ong.description.substring(0, 20)}...',
      ),
      trailing: IconButton(
        color: Colors.green,
        onPressed: () {
          Navigator.pushNamed(
            context,
            AppRoutes.ong,
            arguments: ong,
          );
        },
        icon: const Icon(
          Icons.arrow_right,
          size: 32.0,
        ),
      ),
    );
  }
}
