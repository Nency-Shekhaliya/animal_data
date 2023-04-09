import 'package:animal_data/views/screens/c_animal_page.dart';
import 'package:flutter/material.dart';

import '../helpers/DBhelper.dart';

class Category_page extends StatefulWidget {
  const Category_page({Key? key}) : super(key: key);

  @override
  State<Category_page> createState() => _Category_pageState();
}

class _Category_pageState extends State<Category_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Databasehelper.databasehelper.Fetchdata(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => C_animal_page(
                                  image: data[index]['image'],
                                  image1: data[index]['image1'],
                                  detail: data[index]['detail'],
                                  detail1: data[index]['detail1'],
                                  name1: data[index]['name1'],
                                  name2: data[index]['name2'],
                                  name: data[index]['name'],
                                )));
                      },
                      child: Container(
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              data[index]['image'],
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.7),
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        data[index]['name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
      backgroundColor: Colors.black,
    );
  }
}
