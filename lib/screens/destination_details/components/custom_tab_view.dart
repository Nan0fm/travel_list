import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/screens/destination_details/components/tabbed_text.dart';

class CustomTabView extends StatefulWidget {
  const CustomTabView({
    Key key,
    @required this.items,
    this.activeTab = 0,
  }) : super(key: key);
  final List<String> items;
  final int activeTab;

  @override
  _CustomTabViewState createState() => _CustomTabViewState(activeTab);
}

class _CustomTabViewState extends State<CustomTabView> {
  int actTab = 0;

  _CustomTabViewState(this.actTab);

  void changeTab(int index) {
    setState(() {
      actTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDPadding * 2),
        padding: EdgeInsets.fromLTRB(kDPadding, kDPadding, kDPadding, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 12,
              offset: Offset(6, 6),
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
                widget.items.length,
                (index) => TabbedText(
                      text: widget.items[index],
                      isActive: index == actTab,
                      press: () {
                        changeTab(index);
                      },
                    )),
          ],
        ),
      ),
    );
  }
}
