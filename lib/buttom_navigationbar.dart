import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtomNavigationBar extends ConsumerWidget {
  const ButtomNavigationBar({Key? key, required this.tabsRouter})
      : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _iconButton(context, ref, 0, Icons.home),
              _iconButton(context, ref, 1, Icons.favorite),
              _iconButton(context, ref, 2, Icons.menu),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconButton(
    BuildContext context,
    WidgetRef ref,
    int index,
    IconData icon,
  ) {
    final selected = tabsRouter.activeIndex == index;
    final theme = Theme.of(context);

    return Expanded(
      child: GestureDetector(
        onTap: () {
          tabsRouter.setActiveIndex(index);
        },
        child: ColoredBox(
          color: Colors.transparent,
          child: Icon(
            icon,
            size: 30,
            color: selected ? theme.primaryColor : theme.unselectedWidgetColor,
          ),
        ),
      ),
    );
  }
}
