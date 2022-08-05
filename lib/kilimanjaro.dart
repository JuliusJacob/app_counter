import 'package:app_counter/number_stars.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'number_stars.dart';

class MountKilimanjaro extends StatelessWidget {
  const MountKilimanjaro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(padding: EdgeInsets.all(5)),
        Image.asset(
          "asset/9.png",
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MOUNT KILIMANJARO',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'The Highest Mountain in Africa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            NumberOfStars(),
            // Icon(Icons.star,color: Colors.orange,),
            // Text('41'),
          ],
        ),

        // Expanded(
        //   child: Row(
        //     children: [
        //       ListTile(
        //         title: Text('MOUNT KILIMANJARO'),
        //         subtitle: Text('The Highest Mountain in Africa'),
        //         leading: Icon(Icons.star),
        //       ),
        //       Text('43'),
        //     ],
        //   ),
        // ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(
                    Icons.phone,size: 50,
                    color: Color.fromARGB(255, 207, 28, 16),
                  ),
                  Text('CALL', style: TextStyle(color: Colors.blue))
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(
                    Icons.route,size: 50,
                    color: Colors.yellow,
                  ),
                  Text('ROUTE', style: TextStyle(color: Colors.blue))
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(
                    Icons.share ,size: 50,
                    color: Colors.blueGrey,
                  ),
                  Text('SHARE',
                      style:
                          TextStyle(color: Color.fromARGB(255, 90, 178, 249)))
                ],
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(5)),
        Text(
          'Mount Kilimanjaro is a dormant volcano mountain in united republic in tanzania. It has three volcanic cones: Kibo, Mawenzi and Shira. It is the highest mountain in Africa an the highest single-free standing mountain above sea level in the world: 5,895 meters above sea level and about 4900 meters above it is plateau base ',
          overflow: TextOverflow.visible,
        ),
      ],
    ));
  }
}
