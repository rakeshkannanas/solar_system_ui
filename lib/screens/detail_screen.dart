import 'package:flutter/material.dart';
import 'package:solar_system/models/planets.dart';


class DetailScreen extends StatelessWidget {
  static const routeName = 'DetailScreen';
  int args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments as int;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               //   Container(margin:EdgeInsets.all(10),padding:EdgeInsets.only(top: 30),child: Icon(Icons.arrow_back_ios,color: Colors.grey),),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 220),
                    child: Text(
                      planets[args].name,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Color(0xFF32255b)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'solar system',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Color(0xFF734b6d)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                    child: Divider(height: 5,color: Colors.black,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Text(
                      planets[args].desc,
                      maxLines: 7,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2.0,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                    child: Divider(height: 5,color: Colors.black,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Color(0xFF734b6d)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.only(left: 30,),
                    child: ListView.builder(scrollDirection: Axis.horizontal, itemBuilder: (ctx,i)=>Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      clipBehavior: Clip.antiAlias,
                      child: AspectRatio(aspectRatio:1,child: Image.network(planets[args].images[i],fit: BoxFit.cover,)),
                    ),itemCount: planets[args].images.length,),
                  )
                ],
              ),
            ),
            Positioned(
              top: -30,
              left: 100,
              child: Center(
                child: Container(

                    child: Hero(tag:ValueKey(args),child: Image.asset(planets[args].image))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                planets[args].id,
                style: TextStyle(
                    fontSize: 250,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[200]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 30),
              child: GestureDetector(onTap:(){
                Navigator.of(context).pop();
              },child: Icon(Icons.arrow_back_ios,color: Colors.blueGrey,)),
            )
          ],
        ),
      ),
    );
  }
}
