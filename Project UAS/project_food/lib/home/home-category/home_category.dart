import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_food/home/home-category/isi_category.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  final user = FirebaseAuth.instance.currentUser!;

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
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Center(
            child: Text(
              'Category Makanan Yang Tersedia',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15.0),
          Center(
            child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelColor: Color(0xFFC88D67),
                isScrollable: true,
                labelPadding: EdgeInsets.only(right: 45.0),
                unselectedLabelColor: Color(0xFFCDCDCD),
                tabs: [
                  Tab(
                    child: Text('Category1',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                        )),
                  ),
                  Tab(
                    child: Text('Category1',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                        )),
                  ),
                  Tab(
                    child: Text('Category1',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                        )),
                  )
                ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                IsiCategory(),
                IsiCategory(),
                IsiCategory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
