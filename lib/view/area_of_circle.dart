import 'package:flutter/material.dart';
import 'dart:math'; // To use pi constant

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Radius',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Area of Circle: $area',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    area = pi * radius * radius; // Formula: πr²
                  });
                },
                child: const Text('Calculate Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
