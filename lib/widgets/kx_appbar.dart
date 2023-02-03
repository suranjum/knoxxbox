import 'package:flutter/material.dart';

class KnoxxboxAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  const KnoxxboxAppBar({
    super.key,
    required this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'res/Knoxxbox.png',
            height: 40,
          ),
        ],
      ),
      actions: actions,
    );
  }
}
