import 'package:flutter/material.dart';

class DropUpMenu extends StatelessWidget {
  final List<String> items;
  final void Function(String)? onChanged;

  DropUpMenu({required this.items, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: items.map((item) {
              return ListTile(
                title: Text(item),
                onTap: () {
                  if (onChanged != null) {
                    onChanged!(item);
                  }
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
