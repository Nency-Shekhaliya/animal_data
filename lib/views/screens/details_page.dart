import 'package:flutter/material.dart';

class Details_page extends StatefulWidget {
  final image;

  final name1;

  final detail;

  const Details_page({
    Key? key,
    required this.name1,
    required this.image,
    required this.detail,
  }) : super(key: key);

  @override
  State<Details_page> createState() => _Details_pageState();
}

class _Details_pageState extends State<Details_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: 360,
            height: 250,
            child: Image.asset(
              widget.image,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.grey.withOpacity(0.4), width: 4)),
            child: Text(
              "${widget.name1}",
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Text(
              "${widget.detail}",
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
