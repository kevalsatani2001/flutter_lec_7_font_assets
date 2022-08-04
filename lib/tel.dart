import 'package:flutter/material.dart';

class Listpractice3 extends StatefulWidget {
  const Listpractice3({Key? key}) : super(key: key);

  @override
  State<Listpractice3> createState() => _Listpractice3State();
}

class _Listpractice3State extends State<Listpractice3> {
  List<String> names = [
    "9909407860",
    "9876547887",
    "9876546789",
    "7896543790",
    "8765437098",
    "7567735454",
    "7567735454",
    "7567735454",
    "9876543789",
    "4567896578",
    "4567895439",
    "9909407860",
    "9876547887",
    "9876546789",
    "7896543790",
  ];
  List<String> person = [
    "bvbvbv",
    "Janvi",
    "mansi",
    "Tisha",
    "Feny",
    "dghd",
    "dgdg",
    "teetsf",
    "fgfg",
    "dydy",
    "erere",
    "teetsf",
    "fgfg",
    "dydy",
    "erere"
  ];
  List<String> images = [
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
    "assets/image/i5.jpg",
    "assets/image/i6.jpg",
    "assets/image/i7.jpg",
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
  ];
  List<String> abcc = [
    "16 min ago",
    "12 min ago",
    "15 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
    "17 min ago",
  ];
  List<String> images1 = [
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
    "assets/image/i5.jpg",
    "assets/image/i6.jpg",
    "assets/image/i7.jpg",
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
  ];
  List iconse = [
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
    Icons.equalizer_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.search),
        title: const Text(
          "Messages",
          //style: TextStyle(fontFamily: "Shrikhand"),
        ),
        actions: const [
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                  backgroundColor: Colors.amber,
                ),
                title: Text(
                  person[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                subtitle: Text(
                  names[index],
                  style: const TextStyle(color: Colors.black),
                ),
                // trailing:const  Icon(Icons.message,color: Colors.blue,),
                trailing: Text(abcc[index]),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.black,
              ),
            )),
            Container(
              height: 100,
              width: double.infinity,
              // color: Colors.black,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images1[index]),
                              fit: BoxFit.cover),
                          // image: AssetImage(images1[index]),
                          color: Colors.amber,
                          shape: BoxShape.circle),
                      // height: 50,
                      width: 100,

                      //  Container(
                      //   height: 200,
                      //   width: 200,
                      //   color: Colors.pink,
                      // ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
