import 'package:flutter/material.dart';

class IsiCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                      'Makanan 1',
                      '\$3.99',
                      'https://www.themealdb.com/images/category/beef.png',
                      context),
                  _buildCard(
                      'Makanan 2',
                      '\$5.99',
                      'https://www.themealdb.com/images/category/beef.png',
                      context),
                  _buildCard(
                      'Makanan 3',
                      '\$1.99',
                      'https://www.themealdb.com/images/category/beef.png',
                      context),
                  _buildCard(
                      'Makanan 4',
                      '\$2.99',
                      'https://www.themealdb.com/images/category/beef.png',
                      context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(children: [
            Hero(
                tag: imgPath,
                child: Container(
                    height: 175.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imgPath.toString()),
                            fit: BoxFit.contain)))),
            SizedBox(height: 7.0),
            Text(price,
                style: TextStyle(
                    color: Color(0xFFCC8053),
                    fontFamily: 'Varela',
                    fontSize: 14.0)),
            Text(name,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 14.0)),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
          ]),
        ),
      ),
    );
  }
}
