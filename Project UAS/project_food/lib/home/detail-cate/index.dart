import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:project_food/home/home-category/home_by_category.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMakanan extends StatefulWidget {
  final String namaMakanan;
  final String namaCate;
  const DetailMakanan(
      {Key? key, required this.namaMakanan, required this.namaCate})
      : super(key: key);

  @override
  State<DetailMakanan> createState() => _DetailMakananState();
}

class _DetailMakananState extends State<DetailMakanan> {
  List apiFoodByName = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiFoodByNameData();
  }

  final user = FirebaseAuth.instance.currentUser!;
  Future apiFoodByNameData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/search.php?s=${widget.namaMakanan}'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          apiFoodByName = data['meals'];
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFE57513)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeByCategory(
                  value: widget.namaCate,
                ),
              ),
            );
          },
        ),
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
      body: ListView.builder(
        itemCount: apiFoodByName.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Text(
                      apiFoodByName[index]['strMeal'],
                      style: GoogleFonts.josefinSans(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 44.0),
                  child: Image.network(
                    apiFoodByName[index]['strMealThumb'],
                    width: 280.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
                  child: Text(
                    'Category Makanan: ' + apiFoodByName[index]['strCategory'],
                    style: GoogleFonts.lobster(
                      fontSize: 20.4,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
                  child: Text(
                    'Asal Makanan: ' + apiFoodByName[index]['strArea'],
                    style: GoogleFonts.lobster(
                      fontSize: 20.4,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
                  child: Text(
                    'Tag: ' + apiFoodByName[index]['strTags'].toString(),
                    style: GoogleFonts.lobster(
                      fontSize: 20.4,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                  child: Column(
                    children: [
                      Text(
                        'Ingredients:',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '1. ' +
                            apiFoodByName[index]['strIngredient1'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(
                        '2. ' +
                            apiFoodByName[index]['strIngredient2'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '3. ' +
                            apiFoodByName[index]['strIngredient3'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '4. ' +
                            apiFoodByName[index]['strIngredient4'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '5. ' +
                            apiFoodByName[index]['strIngredient5'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '6. ' +
                            apiFoodByName[index]['strIngredient6'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '7. ' +
                            apiFoodByName[index]['strIngredient7'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '8. ' +
                            apiFoodByName[index]['strIngredient8'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '9. ' +
                            apiFoodByName[index]['strIngredient9'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text(
                        '10. ' +
                            apiFoodByName[index]['strIngredient10'].toString(),
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.yanoneKaffeesatz(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                  child: Text(
                    'How To Make It:',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.yanoneKaffeesatz(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text(
                    apiFoodByName[index]['strInstructions'],
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.yanoneKaffeesatz(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
