import 'package:flutter/material.dart';

class Interfaz4 extends StatelessWidget {
  const Interfaz4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Elementos UI")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Text("Hola Flutter")),
            Text("fontSize: 38"),
            Slider(value: 38, min: 20, max: 60, onChanged: (value) {}),
            Row(
              children: [
                Row(
                  children: [
                    Text("Bold:"),
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
                Row(
                  children: [
                    Text("Italic:"),
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
              ],
            ),
            Center(
              child: ToggleButtons(
                isSelected: const [false, true, false],
                onPressed: (index) {},
                children: const [
                  Icon(Icons.format_align_left),
                  Icon(Icons.format_align_center),
                  Icon(Icons.format_align_right),
                ],
              ),
            ),
            Text("Color:"),
            Row(
              children: [
                GestureDetector(child: Container(width: 40, height: 40)),
                GestureDetector(child: Container(width: 40, height: 40)),
                GestureDetector(child: Container(width: 40, height: 40)),
                GestureDetector(child: Container(width: 40, height: 40)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
