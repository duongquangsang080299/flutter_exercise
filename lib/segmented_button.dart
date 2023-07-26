import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Segmented Button Example'),
        ),
        body: Center(
          child: SegmentedButton(),
        ),
      ),
    );
  }
}

class SegmentedButton extends StatefulWidget {
  const SegmentedButton({super.key});

  @override
  _SegmentedButtonState createState() => _SegmentedButtonState();
}

class _SegmentedButtonState extends State<SegmentedButton> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          // Set the selected index to true and others to false
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = (i == index);
          }
        });
      },
      selectedColor: Colors.white,
      fillColor: Colors.blue,
      borderRadius: BorderRadius.circular(8.0),
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Button 1'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Button 2'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Button 3'),
        ),
      ],
    );
  }
}
