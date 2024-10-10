import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/radio_image.png'),
          height: MediaQuery.of(context).size.height* 0.5,
          ),
        Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 30.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.skip_previous),
              ),
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.play_arrow),
              style: ButtonStyle(
                  iconSize: MaterialStateProperty.all(50.0),
              ),
              ),
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.skip_next),
              )
          ],
        )
      ],
    );
  }
}