import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Map': (context) => MyMenu(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Home': (context) => MyApp(),
        '/Profile': (context) => MyApp(),
      },
      // title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff1e7f3),
          iconTheme: IconThemeData(
            color: Colors.black, // <-- SEE HERE
          ),
          leading: Icon(Icons.arrow_back),
          title: Container(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                /*enabledBorder: OutlineInputBorder(
                  borderSide:
                    BorderSide(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),*/
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon:  Icon(Icons.mail))],
        ),
        body: Column(
          children: [
            titleSection,
            text1,
            buttonSection,
            text2,
            buttonSection2,
            text3,
            buttonSection3,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined, color: Colors.black),
              //activeIcon: Icon(Icons.location_on),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.house, color: Colors.black),
              //activeIcon: Icon(Icons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.black),
              //activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            switch(index){
              case 0:
                Navigator.pushNamed(context, "/Map");
                break;
              case 1:
                Navigator.pushNamed(context, "/Home");
                break;
              case 2:
                Navigator.pushNamed(context, "/Profile");
                break;
          }
          },
        ),
      ),

    );

  }

  static Column _buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.black, size: 50.0,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget text1 = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children:[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Study',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget text2 = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children:[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Social',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget text3 = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children:[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Other',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );



  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.book, 'Study Group'),
      _buildButtonColumn(Icons.calendar_month, 'Calendar'),
      _buildButtonColumn(Icons.laptop, 'Tutoring'),
    ],
  );

  Widget buttonSection2 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.sports_handball, 'Parties'),
      _buildButtonColumn(Icons.people, 'Activities'),
      _buildButtonColumn(Icons.directions_run, 'Outdoors'),
    ],
  );

  Widget buttonSection3 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.house, 'Go Home'),
      _buildButtonColumn(Icons.downhill_skiing, 'Interests Group'),
    ],
  );

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //padding: const EdgeInsets.only(bottom: 2),
                child: const Text(
                  'I want to...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

}




