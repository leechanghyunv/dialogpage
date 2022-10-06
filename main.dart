import 'package:flutter/material.dart';
import 'DialogPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String subwayName1 = '';
  late String passenger1 = '';
  late String subwayName2 = '______';
  late String passenger2 = '______';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show DiaLog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: DialogPage(),   ///
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('cancel')),
                            TextButton(
                                onPressed: ()  {
                                  setState(() {
                                    var subwayName2 = subwayName1;
                                    var passenger2 = passenger1;

                                    print('subwayName1 => ${subwayName1}');
                                    print('passenger1 => ${passenger1}');

                                    print('subwayName2 => ${subwayName2}');
                                    print('passenger2 => ${passenger2}');
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text('adapt')),
                          ],
                        )),
                child: Text(
                  'Bording pass',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            SizedBox(height: 25,),
            Text(
              'Subway Name is ${subwayName2}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Your Name is ${passenger2}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
