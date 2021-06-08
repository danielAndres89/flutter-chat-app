import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String textUno;
  final String textDos;

  const Labels(
      {Key key,
      @required this.ruta,
      @required this.textUno,
      @required this.textDos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.textUno,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(
              this.textDos,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          ),
        ],
      ),
    );
  }
}
