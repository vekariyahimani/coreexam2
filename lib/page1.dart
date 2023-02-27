import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtname = TextEditingController();
  List image = [
    "assets/image/google.jpg",
    "assets/image/bill gates.jpg",
    "assets/image/jeff bezos.jpg",
    "assets/image/mukesh ambani.jpg",
    "assets/image/tim cook.jpg",
    "assets/image/Shantanu_Narayen.jpg",
    "assets/image/Daniel_New-1.jpg",
    "assets/image/Harald_Krueger_Genf_2018.jpg",
    "assets/image/Michael_Dell_2010.jpg",
    "assets/image/bob swan.jpg",
  ];
  List name = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan",
  ];
  List company = [
    "",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black26,
            ),
            actions: [
              PopupMenuButton(
                child: Center(
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.black26,
                    )),
                itemBuilder: (context) {
                  return List.generate(1, ($index) {
                    return PopupMenuItem(
                      child: Column(
                        children: [
                          Text('Call'),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Messege"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Serach"),
                        ],
                      ),
                    );
                  });
                },
              ),
            ],
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(
            children: [
              ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Box(image[index], name[index], company[index],),
                ),
              ),            ],
          ),

        ));
  }

  Widget Box(String image,String name,String number) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "MY CONTACT",
              style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
        Container(
          height: 50,
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ]),
          child: TextField(
            controller: txtname,
            decoration: InputDecoration(
                hintText: "Type name or number",
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.black26,
                )),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "A",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.black26,
        ),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text("HImani"),
                Text("HImani"),
              ],
            ),
            Icon(Icons.phone),
            SizedBox(width: 10,),
            Icon(Icons.message)
          ],
        )

      ],

    );
  }


}
