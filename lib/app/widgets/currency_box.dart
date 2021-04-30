import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton(
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Real'),
                  ),
                  DropdownMenuItem(
                    child: Text('Dolar'),
                  ),
                ],
                onChanged: (_) {},
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              onChanged: (_) {},
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
