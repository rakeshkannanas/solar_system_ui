import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:solar_system/models/planets.dart';
import 'package:solar_system/widgets/stack_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF42275a), Color(0xFF734b6d)])),
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Solar System',
                    style: TextStyle(
                      color: Colors.white60,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.normal,
                      fontSize: 25,
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.white54,
                    size: 27,
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 400,
                padding: EdgeInsets.only(left: 15),
                child: Swiper(
                  itemCount: planets.length,
                  itemHeight: 280,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination:
                      SwiperPagination(builder: DotSwiperPaginationBuilder()),
                  itemBuilder: (ctx, i) => StackWidget(i),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),topLeft: Radius.circular(40.0)),
          color: Color(0xFF42275a),
          boxShadow: [BoxShadow(color: Colors.white24, spreadRadius: 0, blurRadius: 10)]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color(0xFF42275a),
            unselectedItemColor: Colors.grey,
            selectedFontSize: 20,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.explore),title: Text('Explore')),
              BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Search')),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('Profile')),
            ],
          ),
        ),
      ),
    );
  }
}
