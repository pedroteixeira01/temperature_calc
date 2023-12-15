import 'dart:io';

import 'package:temperature_calc/temperature_calc.dart' as temp;
import 'package:args/args.dart';

void main(List<String> args){

  final parser = ArgParser()
  ..addOption('c2f', help: 'This option coverts celsius to fahrenheit')
  ..addOption('c2k', help: 'This option converts celsius to kelvin')
  ..addOption('f2c', help: 'This option converts fahrenheit to celsius')
  ..addOption('f2k', help: 'This option converts fahrenheit to kelvin')
  ..addOption('k2c', help: 'This option converts kelvin to celsius')
  ..addOption('k2f', help: 'This option converts kelvin to fahrenheit')
  ..addFlag('help', abbr: 'h', help: 'This flag shows the description of all functions');

  try {

    var results = parser.parse(args);

    switch(results.arguments[0]){
      case '--c2f':
        print('The result is ${temp.celsiusToFahrenheit(double.parse(results.arguments[1]))}');
        exit(0);
      case '--c2k':
        print('The result is ${temp.celsiusToKelvin(double.parse(results.arguments[1]))}');
        exit(0);
      case '--f2c':
      print('The result is ${temp.fahrenheitToCelsius(double.parse(results.arguments[1]))}');
        exit(0);
      case '--f2k':
      print('The result is ${temp.fahrenheitToKelvin(double.parse(results.arguments[1]))}');
        exit(0);
      case '--k2c':
      print('The result is ${temp.kelvinToCelsius(double.parse(results.arguments[1]))}');
        exit(0);
      case '--k2f':
      print('The result is ${temp.kelvinToFahrenheit(double.parse(results.arguments[1]))}');
        exit(0);
      case '--help' || '-h':
        print(parser.usage);
        exit(0);
      default:
        throw Exception('This option does not exists.');
    }
  }catch (e) {
    
    print(e);
  }
}