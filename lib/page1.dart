import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:one/page2.dart';








class function_one extends StatefulWidget {
  const function_one({Key? key}) : super(key: key);
  @override
  State<function_one> createState() => _function_oneState();
}
class _function_oneState extends State<function_one> {
  int _currentIndex=0;

  void onTabTapped(int index)=> setState(() {
    _currentIndex = index;
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.50,
        title: Text("My Journal",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search_off_outlined),
            color: Colors.blue,
          iconSize: 30,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt_outlined),
            color: Colors.blue,
            iconSize: 30,)

        ],
        bottom: PreferredSize(
          preferredSize:Size.fromHeight(50.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(

            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ElevatedButton(

                    onPressed: null,
                  child: const Text("All Habits"),


                ),
                SizedBox(width:50),

                ElevatedButton(

                  onPressed: null,
                  child: const Text("Afternoon"),

                ),
                SizedBox(width:50),

                ElevatedButton(

                  onPressed: null,
                  child: const Text("Morning"),

                ),
                SizedBox(width:50),

                ElevatedButton(

                  onPressed:null,
                  child: const Text("New Area"),

                )


              ],
            ),
          ) ,
        ),
      ),
      floatingActionButton: SpeedDial(

          animatedIcon: AnimatedIcons.add_event,
          children: [
            SpeedDialChild(
              child: Icon(Icons.mail),
              label:"Create new habit",
            ),
            SpeedDialChild(
              child: Icon(Icons.edit),
              label:"Break bad habit",
            ),
          ]

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.view_day, ),
            label: "Journal",backgroundColor: Colors.grey,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),backgroundColor: Colors.grey,
            label:"Progress"  ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.run_circle),backgroundColor: Colors.grey,
            label: "Challenges",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,),backgroundColor: Colors.grey,
            label: "Upgrade" ,
          )
          ,BottomNavigationBarItem(
            icon: Icon(Icons.settings),backgroundColor: Colors.grey,
            label: "Settings",
          )

        ],

      ),
    );
  }
}
