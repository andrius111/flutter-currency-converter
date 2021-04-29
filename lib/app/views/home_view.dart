import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * .1,
            left: size.width * .05,
            right: size.width * .05,
          ),
          child: Column(
            children: [
              SafeArea(
                child: Image.asset(
                  'assets/logo.png',
                  width: size.width * .35,
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              SizedBox(
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
              ),
              SizedBox(
                height: size.height * .05,
              ),
              ElevatedButton(
                child: Text('CONVERT'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
