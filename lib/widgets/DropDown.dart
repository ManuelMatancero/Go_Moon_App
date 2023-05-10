import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  List<String> list;
  double width;

  CustomDropDown(this.list, this.width) {}

  //Widget for the dropList
  @override
  Widget build(BuildContext context) {
    //List of elements should be a list of objects that is the reason why this looks like that
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: list.first,
        onChanged: (_) {},
        items: list.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
