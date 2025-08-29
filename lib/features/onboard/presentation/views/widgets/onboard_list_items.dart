import 'package:fitness_app/features/onboard/presentation/views/widgets/selected_container.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/unselected_container.dart';
import 'package:flutter/material.dart';

class OnBoardListItems extends StatefulWidget {
  const OnBoardListItems({
    super.key,
    required this.list,
    required this.selectedIndex,
  });

  final List<dynamic> list;
  final int selectedIndex;

  @override
  State<OnBoardListItems> createState() => _OnBoardListItemsState();
}

// selectedIndex is a local variable here
class _OnBoardListItemsState extends State<OnBoardListItems> {
  // always make sure that selectedIndex here is not a global variable
  // which mean its out site this part of state
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (item, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => setState(() => selectedIndex = index),
            child: selectedIndex == index
                ? SelectedContainer(
                    title: widget.list[index],
                  )
                : UnSelectedContainer(
                    index: index,
                    title: widget.list[index],
                  ),
          ),
        );
      },
      itemCount: widget.list.length,
    );
  }
}
