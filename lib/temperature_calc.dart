double celsiusToFahrenheit(double celsius){
  return celsius * 1.8 + 32;
}

double celsiusToKelvin(double celsius){
  return celsius + 273;
}

double fahrenheitToCelsius(double fahrenheit){
  return (fahrenheit - 32) / 1.8;
}

double fahrenheitToKelvin(double fahrenheit){
  return (fahrenheit - 32) * (5 / 9) + 273;
}

double kelvinToCelsius(double kelvin){
  return kelvin - 273;
}

double kelvinToFahrenheit(double kelvin){
  return (kelvin - 273) * 1.8 + 32;
}
