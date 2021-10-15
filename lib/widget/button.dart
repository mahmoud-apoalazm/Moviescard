import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BuyButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 200,
          height: 40,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
            color: Colors.black54,
            child: Text(
              'BUY TICKET',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
}
