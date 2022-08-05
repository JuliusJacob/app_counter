import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberOfStars extends StatefulWidget {
  NumberOfStars({Key? key}) : super(key: key);
  bool isStarred = true;
  int numberOfStars = 4;

  @override
  State<NumberOfStars> createState() => _NumberOfStarsState();
}

class _NumberOfStarsState extends State<NumberOfStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              widget.isStarred = !widget.isStarred;
              widget.isStarred
                  ? widget.numberOfStars++
                  : widget.numberOfStars--;
            });
          },
          icon: Icon(
            widget.isStarred ? Icons.star : Icons.star_outline,
            color: Colors.red,size: 20,
          ),
        ),
        Text('${widget.numberOfStars}'),
      ],
    );
  }
}
