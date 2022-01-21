import 'package:bus_ticket_booking/UI/notification_screeen.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:bus_ticket_booking/UI/offers_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      drawer: Drawer(
        // column holds all the widgets in the drawer
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children:[
                  DrawerHeader(child: FlutterLogo()),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: const Text('Call Support'),
                    onTap: () {
                      UrlLauncher.launch('tel: +880123456789');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.wallet_giftcard),
                    title: const Text('Offers'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OffersScreen(),));
                    },
                  ),

                        ListTile(
                          leading: Icon(Icons.description_rounded),
                          title: const Text('Terms & Conditions'),
                          onTap: () {
                          },
                        ),
                ],
              ),
            ),
            // This container holds the align
            Container(
              // This align moves the children to the bottom
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                        child: Column(
                          children: <Widget>[
                            Divider(),
                            ListTile(
                                leading: Icon(Icons.help),
                                title: Text('About Us',style: TextStyle(fontSize: 18),)),
                          ],
                        ),
                    )
                )
            )
          ],
        ),
      ),





      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          size: 40,
          color: Color(0xfff7892b),
        ),
        title: Text("BookMyBus",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(),));
              },
                child: Icon(Icons.notifications,size: 30,color: Color(0xfff7892b),)),
          ),
        ],
      ),


      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14.0,bottom: 12.0),
            child: Text("Search and Buy Bus Tickets",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xfff7892b),
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child:Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.location_on_outlined,color: Colors.white,),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.white,),
                      title: Text("From",style: TextStyle(color:Colors.white),),
                      subtitle: Text("Dhaka",style: TextStyle(color:Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.swap_vert,size: 28,color: Colors.white,))
                        ,
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width - 84,
                          color: Colors.white,
                        ),


                      ],
                    ),
                  ),

                  ListTile(
                      leading: Icon(Icons.location_on_outlined,color: Colors.white,),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.white,),
                      title: Text("To",style: TextStyle(color:Colors.white),),
                      subtitle: Text("Dhaka",style: TextStyle(color:Colors.white),),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0,left: 8.0,right: 8.0),
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xfff7892b),
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.calendar_today,color: Colors.white,),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color:Colors.white),
                    title: Text("Journey Date",style: TextStyle(color:Colors.white)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0,left: 8.0,bottom: 8.0,right: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xfff7892b),
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: TextButton(onPressed: () {

              }, child: Text("SEARCH",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),
          TextButton(onPressed: () {
            
          }, child: Text("RECENT SEARCH",style: TextStyle(fontSize: 18,color: Colors.black54),))
        ],
      ),
    );
  }
}
