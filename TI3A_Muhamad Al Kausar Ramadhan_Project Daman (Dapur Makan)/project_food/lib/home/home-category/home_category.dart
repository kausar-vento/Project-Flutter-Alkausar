import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:project_food/home/home-category/home_by_category.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  List getCategory = [];

  @override
  void initState() {
    super.initState();
    getCategoryData();
  }

  final user = FirebaseAuth.instance.currentUser!;
  Future getCategoryData() async {
    try {
      final response = await http.get(
          Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          getCategory = data['categories'];
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
                  FirebaseAuth.instance.signOut();
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
                  child: Text("Category Makanan Yang Tersedia"),
                ),
                GridList(get: getCategory),
              ],
            ),
          )),
    );
  }
}

class GridList extends StatelessWidget {
  const GridList({
    Key? key,
    required List get,
  })  : getCategory = get,
        super(key: key);

  final List getCategory;

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
                    builder: (context) => HomeByCategory(
                        value: getCategory[index]['strCategory'].toString())));
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Card(
            child: Column(
              children: [
                Image(
                  image: NetworkImage(getCategory[index]['strCategoryThumb']),
                  height: 135.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      getCategory[index]['strCategory'],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      itemCount: getCategory.length,
    );
  }
}
