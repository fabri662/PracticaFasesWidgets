import 'package:flutter/material.dart';

class Interfaz4 extends StatelessWidget {
  const Interfaz4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elementos UI"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),

            const Center(
              child: Text(
                "Hola Flutter",
                style: TextStyle(fontSize: 38, color: Colors.blue),
              ),
            ),

            const Spacer(),

            const Text(
              "fontSize: 38",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Slider(value: 38, min: 20, max: 60, onChanged: (value) {}),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Text(
                      "Bold:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Italic:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            Center(
              child: ToggleButtons(
                isSelected: const [false, true, false],
                onPressed: (index) {},
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.format_align_left),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.format_align_center),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.format_align_right),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text("Color:", style: TextStyle(fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
