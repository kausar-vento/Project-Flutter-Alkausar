import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0 ,20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const[
                    Text(
                      "BREAKING NEWS",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "ANOTHER FOOD",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.purpleAccent)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 320,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.fitWidth,
                          image:  NetworkImage('https://assets-pergikuliner.com/4o-dKncqKNS6QQbFDqM52WkrK0o=/fit-in/1366x768/smart/filters:no_upscale()/https://assets-pergikuliner.com/uploads/bootsy/image/12013/picture-1537766225.jpeg'),
                        )
                      ),    
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: const Text(
                        "Nasi Padang Merupakan Makanan Yang Sudah Terkenal Di Berbagai Macam Negara",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.purpleAccent,
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: const Text(
                        "Baca Selengkapnya",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/nasgor.jpeg"),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: const Text(
                              "Resep Membuat Nasi Goreng Yang Simpel"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: const Text("Jakarta, 1 November 2022"),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/miegor.jpe"),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: const Text(
                              "Resep Membuat Mie Goreng Yang Simpel"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                    child: const Text("Bogor, 1 November 2022"),
                  )
                  ],
                  ),
              ),
            ],
          ),
      ),
    );
  }
}
