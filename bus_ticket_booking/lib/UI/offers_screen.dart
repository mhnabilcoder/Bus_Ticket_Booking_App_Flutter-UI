
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offers",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/cashback.jpeg",),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 90,
                      width: 60,
                      color: Colors.redAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 90,
                      width: 310,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('Offer Name',style: TextStyle(fontSize: 16),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("20/12/2021"),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                      height: 50,
                                      child: Text("Get Up to 40% Cash Back On 1st Payments",style: TextStyle(fontSize: 18),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1,), // changes position of shadow
              ),
            ],
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
