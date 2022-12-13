import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:project_food/home/detail-cate/index.dart';
import 'package:project_food/home/home-category/home_category.dart';

class HomeByCategory extends StatefulWidget {
  final String value;
  const HomeByCategory({Key? key, required this.value}) : super(key: key);

  @override
  _HomeByCategoryState createState() => _HomeByCategoryState();
}

class _HomeByCategoryState extends State<HomeByCategory> {
  List apiFoodByCategory = [];

  @override
  void initState() {
    super.initState();
    apiFoodByCategoryData();
  }

  final user = FirebaseAuth.instance.currentUser!;
  Future apiFoodByCategoryData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/filter.php?c=${widget.value}'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          apiFoodByCategory = data['meals'];
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFFE57513)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeCategory()));
                }),
            title: Text(
              'Email: ' + user.email!,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.logout_rounded, color: Color(0xFFE57513)),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Center(
                      child: Text(
                    "Pencarian Makanan Berdasarkan Category: ${widget.value}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                ),
                DataMakanan(
                  get: apiFoodByCategory,
                  dCate: widget.value.toString(),
                ),
              ],
            ),
          )),
    );
  }
}

class DataMakanan extends StatelessWidget {
  const DataMakanan({
    Key? key,
    required List get,
    required this.dCate,
  })  : apiFoodByCategory = get,
        super(key: key);

  final List apiFoodByCategory;
  final String dCate;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) => Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailMakanan(
                  namaMakanan: apiFoodByCategory[index]['strMeal'].toString(),
                  namaCate: dCate,
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Card(
            child: Column(
              children: [
                Image(
                  image: NetworkImage(apiFoodByCategory[index]['strMealThumb']),
                  height: 120.0,
                  width: 180.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      apiFoodByCategory[index]['strMeal'],
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      itemCount: apiFoodByCategory.length,
    );
  }
}
