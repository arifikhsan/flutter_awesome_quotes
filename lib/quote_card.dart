import 'package:flutter/material.dart';
import 'package:flutter_awesome_quotes/quote.dart';

class QuoteCard extends StatelessWidget {
//  const QuoteCard({
//    Key key,
//  }) : super(key: key);

  final Quote quote;

  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
