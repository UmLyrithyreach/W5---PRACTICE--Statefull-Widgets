import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 1000,
          child: ListView(
            children: [
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Selected"),
              SizedBox(height: 10),
              Custombutton(title: "Not Selected"),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class Custombutton extends StatefulWidget {
  final String title;
  const Custombutton({super.key, required this.title});

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  bool isSelected = false;

  String get buttonText => isSelected ? "Selected" : "Not Selected";
  Color get textColor => isSelected ? Colors.white : Colors.black;
  Color get bgColor => isSelected ? Colors.blue[500]! : Colors.blue[50]!;

  void buttonChnage() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => buttonChnage(),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.lightBlue : Colors.white,
      ),
      child: Text(buttonText, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
