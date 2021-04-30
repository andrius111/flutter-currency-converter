import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<CurrencyModel> currencies;
  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    double value = double.tryParse(toText.text) ?? 1;
    double currencyMultiplier = toCurrency.dolar;

    switch (fromCurrency.name) {
      case 'Real':
        currencyMultiplier = toCurrency.real;
        break;

      case 'Euro':
        currencyMultiplier = toCurrency.euro;
        break;
    }

    fromText.text = (value * currencyMultiplier).toStringAsFixed(2);
  }
}
