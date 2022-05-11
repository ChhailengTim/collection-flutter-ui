void main() {
  int khmer = 5;
  int math = 30;
  int code = 10;
  int total = khmer + math + code;
  String? result = total < 25
      ? "C"
      : total > 25 && total < 50
          ? "B"
          : "A";

  print(result);
}
