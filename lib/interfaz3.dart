import 'package:flutter/material.dart';

class Interfaz3 extends StatelessWidget {
  const Interfaz3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column y Row")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(child: const Text("A")),
                  Container(child: const Text("B")),
                  Container(child: const Text("C")),
                ],
              ),
            ),

            Row(
              children: [
                const Text("Modo:"),
                const Text("Column"),
                Switch(value: false, onChanged: (value) {}),
                const Text("Row"),
              ],
            ),

            const Text("mainAxisAlignment"),

            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("start")),
                ElevatedButton(onPressed: () {}, child: const Text("center")),
                ElevatedButton(onPressed: () {}, child: const Text("end")),
              ],
            ),

            const Text("crossAxisAlignment"),

            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("start")),
                ElevatedButton(onPressed: () {}, child: const Text("center")),
                ElevatedButton(onPressed: () {}, child: const Text("end")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
