

  String englishToBanglaNumber(number) {
    Map<String, String> banglaDigits = {
      '0': '০',
      '1': '১',
      '2': '২',
      '3': '৩',
      '4': '৪',
      '5': '৫',
      '6': '৬',
      '7': '৭',
      '8': '৮',
      '9': '৯',
    };

    String banglaNumber = '';

    for (int i = 0; i < number.length; i++) {
      String digit = number[i];
      if (banglaDigits.containsKey(digit)) {
        banglaNumber += banglaDigits[digit]!;
      } else {
        banglaNumber += digit;
      }
    }

    return banglaNumber;
  }