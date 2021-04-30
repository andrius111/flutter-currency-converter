import 'package:conversor_moedas/app/widgets/currency_box.dart';
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
                height: size.height * .05,
              ),
              CurrencyBox(),
              SizedBox(
                height: size.height * .03,
              ),
              CurrencyBox(),
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
