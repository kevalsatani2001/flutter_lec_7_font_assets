import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pay extends StatefulWidget {
  const pay({Key? key}) : super(key: key);

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  List<String> names = ["Scan & Pay", "To Mobole", "To Self", "To Bank A/C"];
  List<String> names1 = [
    "Balance & History",
    "Personal Loan",
    "Paytm Wallet",
    "Paytm Post"
  ];
  List<String> names2 = [
    "Mobile Reacharge",
    "Rent via Credit Card",
    "DTH Reacharge",
    "Electricity Bill",
    "Book Gas Cylinder",
    "View More"
  ];
  List<String> names3 = [
    "Flight Tickets",
    "Texi Tickets",
    "Movie Tickets",
    "Rail Tickets",
    "Event Tickets",
    "View More"
  ];
  List<String> names4 = [
    "Paytm First",
    "Cashback & Offers",
    "Gift Cards",
    "Redeem Coupons"
  ];
  List icon = [
    Icons.money,
    Icons.book_online,
    Icons.person,
    Icons.account_balance
  ];
  List icon2 = [Icons.menu_book, Icons.album, Icons.wallet, Icons.paid];
  List icon3 = [
    Icons.mobile_friendly,
    Icons.credit_card,
    Icons.tv,
    Icons.electrical_services_outlined,
    Icons.gas_meter,
    Icons.arrow_right
  ];
  List icon4 = [
    Icons.flight,
    Icons.local_taxi,
    Icons.movie,
    Icons.train,
    Icons.event_seat,
    Icons.arrow_right
  ];
  List icon5 = [
    Icons.star_rounded,
    Icons.discount,
    Icons.card_giftcard_sharp,
    Icons.local_offer
    // Icons.event_seat,
    // Icons.arrow_right
  ];
  List images1 = [
    "assets/image/i1.jpg",
    "assets/image/i2.jpg",
    "assets/image/i3.jpg",
    "assets/image/i4.jpg",
    // "assets/image/i5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          "paytm",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.person_add_alt_sharp),
        actions: [
          Row(
            children: const [
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.chat),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: "scan any QR",
        child: Icon(Icons.qr_code),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "UPI Payments",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
                //Icon(Icons.image),
              ),
            ),
            Card(
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                //child:const Center(child:Text("")),
                height: 150,
                width: double.infinity,
                // color: Colors.green,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                //child:Text("data")
                                decoration: const BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage(images1[index]),
                                    //     fit: BoxFit.cover),
                                    //color: Colors.amber,
                                    shape: BoxShape.rectangle),

                                //width: 50,
                                //child:SizedBox(height: 21);
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  //color: Colors.black,
                                  child: Icon(
                                    icon[index],
                                    size: 80,
                                    color: Colors.blue,
                                  ),
                                ),

                                // child: const Text(
                                //   //"fddsf",
                                // ),
                              ),
                              Text(names[index]),
                            ],
                          ),

                          // Container(
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage(images1[index]),
                          //           fit: BoxFit.cover),
                          //       color: Colors.amber,
                          //       shape: BoxShape.circle),
                          //   width: 50,
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "My Paytm",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    //style: TextStyle(),
                  ),
                ),
              ),
            ),
            Card(
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                //child:const Center(child:Text("")),
                height: 150,
                width: double.infinity,
                // color: Colors.green,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage(images1[index]),
                                    //     fit: BoxFit.cover),
                                    //color: Colors.amber,
                                    shape: BoxShape.rectangle),

                                //width: 50,
                                //child:SizedBox(height: 21);
                                child: Icon(
                                  icon2[index],
                                  size: 80,
                                  color: Colors.blue,
                                ),

                                // child: const Text(
                                //   //"fddsf",
                                // ),
                              ),
                              Text(names1[index]),
                            ],
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage(images1[index]),
                          //           fit: BoxFit.cover),
                          //       color: Colors.amber,
                          //       shape: BoxShape.circle),
                          //   width: 50,
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Reacharge & Bill Payments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    //style: TextStyle(),
                  ),
                ),
              ),
            ),
            Card(
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                //child:const Center(child:Text("")),
                height: 150,
                width: double.infinity,
                // color: Colors.green,
                child: ListView.builder(
                  itemCount: icon3.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage(images1[index]),
                                    //     fit: BoxFit.cover),
                                    //color: Colors.amber,
                                    shape: BoxShape.rectangle),

                                //width: 50,
                                //child:SizedBox(height: 21);
                                child: Icon(
                                  icon3[index],
                                  size: 80,
                                  color: Colors.blue,
                                ),

                                // child: const Text(
                                //   //"fddsf",
                                // ),
                              ),
                              Text(names2[index]),
                            ],
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage(images1[index]),
                          //           fit: BoxFit.cover),
                          //       color: Colors.amber,
                          //       shape: BoxShape.circle),
                          //   width: 50,
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Ticket Booking",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    //style: TextStyle(),
                  ),
                ),
              ),
            ),
            Card(
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                //child:const Center(child:Text("")),
                height: 150,
                width: double.infinity,
                // color: Colors.green,
                child: ListView.builder(
                  itemCount: icon3.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage(images1[index]),
                                    //     fit: BoxFit.cover),
                                    //color: Colors.amber,
                                    shape: BoxShape.rectangle),

                                //width: 50,
                                //child:SizedBox(height: 21);
                                child: Icon(
                                  icon4[index],
                                  size: 80,
                                  color: Colors.blue,
                                ),

                                // child: const Text(
                                //   //"fddsf",
                                // ),
                              ),
                              Text(names3[index]),
                            ],
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage(images1[index]),
                          //           fit: BoxFit.cover),
                          //       color: Colors.amber,
                          //       shape: BoxShape.circle),
                          //   width: 50,
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Save more with Paytm",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    //style: TextStyle(),
                  ),
                ),
              ),
            ),
            Card(
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                //child:const Center(child:Text("")),
                height: 150,
                width: double.infinity,
                // color: Colors.green,
                child: ListView.builder(
                  itemCount: icon5.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage(images1[index]),
                                    //     fit: BoxFit.cover),
                                    //color: Colors.amber,
                                    shape: BoxShape.rectangle),

                                //width: 50,
                                //child:SizedBox(height: 21);
                                child: Icon(
                                  icon5[index],
                                  size: 80,
                                  color: Colors.blue,
                                ),

                                // child: const Text(
                                //   //"fddsf",
                                // ),
                              ),
                              Text(names4[index]),
                            ],
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage(images1[index]),
                          //           fit: BoxFit.cover),
                          //       color: Colors.amber,
                          //       shape: BoxShape.circle),
                          //   width: 50,
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
