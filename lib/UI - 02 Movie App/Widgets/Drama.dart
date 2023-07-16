import 'package:flutter/material.dart';

class Drama extends StatefulWidget {
  const Drama({super.key});

  @override
  State<Drama> createState() => _DramaState();
}

class _DramaState extends State<Drama> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                    "assets/images/UI - 02/MoviePosters/Mad-Max-Fury-Road.jpg"),
                height: 150,
                width: 100,
              ),
              Text("Mad Max Fury Road",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  textWidthBasis: TextWidthBasis.parent),
            ],
          ),
        ),
      ],
    );
  }
}
