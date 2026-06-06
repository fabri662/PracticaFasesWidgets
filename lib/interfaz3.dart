import 'package:flutter/material.dart';

class Interfaz3 extends StatelessWidget {
  const Interfaz3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column y Row"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: const Center(child: Text("A")),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Center(child: Text("B")),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: const Center(
                      child: Text("C", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Row(
              children: [
                const Text(
                  "Modo:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text("Column"),
                Switch(value: false, onChanged: (value) {}),
                const Text("Row"),
              ],
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "mainAxisAlignment",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("start")),
                ElevatedButton(onPressed: () {}, child: const Text("center")),
                ElevatedButton(onPressed: () {}, child: const Text("end")),
              ],
            ),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "crossAxisAlignment",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
