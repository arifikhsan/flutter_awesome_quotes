import 'package:flutter/material.dart';
import 'package:flutter_awesome_quotes/quote.dart';
import 'package:flutter_awesome_quotes/quote_card.dart';

void main() => runApp(
      MaterialApp(
        home: QuoteList(),
      ),
    );

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Osca Wilde',
        text: 'Be yourself, everyone else is already taken'),
    Quote(
        author: 'Osca Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Osca Wilde', text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map(
              (quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                    print('I dont feel so good');
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
