import 'package:flutter/material.dart';

void main()=>runApp(const MaterialApp(
  home: function_one(),
));

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


              ],
            ),
          ) ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),

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
