import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final void Function()? onTap;

  const MyTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        title: Text(title),
      ),
    );
  }
}
