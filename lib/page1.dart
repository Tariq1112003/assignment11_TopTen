main() {
  print("start");
  print(Demo());
  Demo().then((dynamic out) {
    print(out);
  });
  print("End");
}

Demo() async {
  return "Hello Wrld";
}
