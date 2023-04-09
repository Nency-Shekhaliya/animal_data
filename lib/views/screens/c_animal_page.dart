import 'package:animal_data/views/screens/detailsPage2.dart';
import 'package:animal_data/views/screens/details_page.dart';
import 'package:flutter/material.dart';

class C_animal_page extends StatefulWidget {
  final image;
  final image1;
  final name;
  final name1;
  final name2;

  final detail;
  final detail1;

  const C_animal_page(
      {Key? key,
      required this.name,
      required this.image,
      required this.image1,
      required this.name1,
      required this.name2,
      required this.detail,
      required this.detail1})
      : super(key: key);

  @override
  State<C_animal_page> createState() => _C_animal_pageState();
}

class _C_animal_pageState extends State<C_animal_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: const BoxDecoration(color: Colors.white),
              child: Text(
                widget.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details_page(
                          image: widget.image,
                          name1: widget.name1,
                          detail: widget.detail,
                        )));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details_page2(
                          name2: widget.name2,
                          detail1: widget.detail1,
                          imge1: widget.image1,
                        )));
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.image1,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
