
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offers"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 2.0,left: 8.0,right: 8.0),
              child: Container(
                height: 305,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 8.0,right: 8.0),
              child: Container(
                height: 305,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 8.0,right: 8.0),
              child: Container(
                height: 305,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
