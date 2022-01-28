import 'package:flutter/material.dart';

class TermsConPage extends StatelessWidget {
  const TermsConPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xfff7892b)),
        title: Text("Terms And Condition",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("NO Terms And Condition",textAlign: TextAlign.center,style: TextStyle(color: Colors.black54,fontSize: 34,fontWeight: FontWeight.w800,),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
