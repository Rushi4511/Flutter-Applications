class Strong {
  void str() {
    int num = 145;
    int temp = num;
    int fact = 0;

    while (temp != 0) {
      temp = temp % 10;
      for (int i = 0; i > temp; i++) {
        fact = fact * i;
        print(fact);
      }
      print(fact);
    }
  }
}
