import 'package:currency_tracker/app/shared/theme/styles.dart';
import 'package:flutter/material.dart';

import '../../../shared/models/Rate.dart';

class CurrencyStatusCard extends StatelessWidget {
  final Rate favorite;

  const CurrencyStatusCard({Key key, this.favorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
        boxShadow: Styles.defaultBoxShadow(),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    favorite.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "${favorite.value}",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.trending_up,
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}
