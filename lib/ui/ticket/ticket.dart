import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/ui/offers/offers.dart';

import '../../network/apiResponse.dart';
import '../../services/ReservationService.dart';

class Tickets extends StatefulWidget {
  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  List<dynamic> _reservation = [];
  bool _isloading = true;

  @override
  /* void initState() {
    retrieveReservation();
    super.initState();
  }

  Future<void> retrieveReservation() async {
    ApiResponse response = await ReservationService().getReservations();
    if (response.error == null) {
      setState(() {
        _reservation = response.data as List<dynamic>;
        _isloading = _isloading ? !_isloading : _isloading;
      });
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _goBackButton(context),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Tickers",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 14, 98, 167),
      ),
      backgroundColor: Color.fromARGB(255, 14, 98, 167),
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Text(
                    "IST",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.flight_takeoff,
                      color: Color.fromARGB(255, 14, 98, 167),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "BEN",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Fligh Ticket",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                ),
                child: Column(
                  children: [
                    tickeDetailsWidget(
                        'passengers', 'Ilona', 'Date', '7-8-2022'),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 2),
                      child: tickeDetailsWidget('PASSPORT', 'seatA23044766',
                          'TIckET NUMBER', 'EFT473893vvg5 '),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 30),
                      child: tickeDetailsWidget(
                          'class', 'Business', 'seat', '22A'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/barcode.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 75, right: 75),
                child: Text(
                  '6789 6794 2356 678',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

Widget tickeDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$firstTitle",
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                "$firstDesc",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$secondTitle",
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              "$secondDesc",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _goBackButton(BuildContext context) {
  return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.grey[350]),
      onPressed: () {
        Navigator.of(context).push;
      });
}
