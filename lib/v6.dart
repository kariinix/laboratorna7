import 'package:flutter/material.dart';

class V6 extends StatefulWidget {
  const V6({super.key});

  @override
  State<V6> createState() => _V6State();
}

class _V6State extends State<V6> {
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;

  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  Color getColorFromRGB() {
    return Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),

        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: getColorFromRGB(),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 20),

        // Red Slider
        Row(
          children: [
            const Text("Red: "),
            Text(_red.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _red,
          min: 0,
          max: 255,
          activeColor: Colors.red,
          onChanged: _onChangeRed,
        ),

        // Green Slider
        Row(
          children: [
            const Text("Green: "),
            Text(_green.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _green,
          min: 0,
          max: 255,
          activeColor: Colors.green,
          onChanged: _onChangeGreen,
        ),

        // Blue Slider
        Row(
          children: [
            const Text("Blue: "),
            Text(_blue.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _blue,
          min: 0,
          max: 255,
          activeColor: Colors.blue,
          onChanged: _onChangeBlue,
        ),
      ],
    );
  }
}