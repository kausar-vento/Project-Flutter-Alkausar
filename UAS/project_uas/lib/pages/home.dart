import 'package:flutter/material.dart';
import 'package:project_uas/models/api_services.dart';
import 'package:project_uas/models/data_class.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiService apiService = ApiService();
  late Future<List<DataClass>> listData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listData = apiService.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<DataClass>>(
          future: listData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<DataClass> isiData = snapshot.data!;
              return ListView.builder(
                itemCount: isiData.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(isiData[index].nama),
                      leading: CircleAvatar(backgroundImage: NetworkImage(isiData[index].avatar),),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
