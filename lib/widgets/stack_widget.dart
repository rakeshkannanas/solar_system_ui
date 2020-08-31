import 'package:flutter/material.dart';
import 'package:solar_system/models/planets.dart';
import 'package:solar_system/screens/detail_screen.dart';

class StackWidget extends StatelessWidget {
  final int i;
  StackWidget(this.i);
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
          child: Container(
            height: 500,
            padding: EdgeInsets.fromLTRB(10, 130, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planets[i].name,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color(0xFF32255b)),
                ),
                Text(
                  'solar system',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color(0xFF734b6d)),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).pushNamed(DetailScreen.routeName,arguments: i);},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'know more',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2.0,
                          color: Colors.pink[200],
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.pink[200],
                        size: 25,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 30, 0),
              child: Text(
                planets[i].id,
                style: TextStyle(
                    fontSize: 200,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[200]),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Positioned(
          top: -60,
          left: 0,
          child: Center(
            child: Container(
                height: 230,
                width: 230,
                child: Hero(tag:ValueKey(i),child: Image.asset(planets[i].image))),
          ),
        )
      ],
    );
  }
}
