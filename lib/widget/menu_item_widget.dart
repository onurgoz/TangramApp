import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String name;
  final Color color;
  final String routeName;
  const MenuItemWidget({
    Key key,
    @required this.name,
    @required this.color,
    @required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.all(5),
        width: 250,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        padding: EdgeInsets.all(10),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
    );
  }
}
