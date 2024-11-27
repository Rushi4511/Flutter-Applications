class Armstrong {
  void Arm() {
    int num = 11;
    int n = 0;
    int temp1 = num;
    int count = 0;
    int temp2 = num;
    int arm = 0;
    while (temp1 != 0) {
      temp1 = temp1 ~/ 10;
      count++;
    }
    while (temp2 != 0) {
      temp2 = temp2 % 10;
      arm = arm * arm * arm + temp2;
    }
    if (arm == num) {
      print("no is armstrong");
    } else {
      print("No is not armstrong");
    }
  }
}

void main() {
  Armstrong obj = new Armstrong();
  obj.Arm();
}
