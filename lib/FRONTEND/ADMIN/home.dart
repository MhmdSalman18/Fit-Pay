import 'package:flutter/material.dart';

class adminHome extends StatefulWidget {
  const adminHome({super.key, required String title});

  @override
  State<adminHome> createState() => adminHomeState();
}

class adminHomeState extends State<adminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: Builder(
    builder: (context) => IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    ),
  ),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        // Handle notification icon press
      },

    ),
     IconButton(
      icon: Icon(Icons.circle),
      onPressed: () {
        // Handle notification icon press
      },
    ),
   
  ],
),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 199, 186, 1),
              ),
              child: Text(
                'Admin Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
   body: Center(
  child: Column(
    // mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Padding(
        padding: const EdgeInsets.only(left: 16.0), // Optional padding around the heading
        child: Text(
          'Health and fitness gym',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 10), // Adds space between heading and paragraph
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Optional padding around the paragraph
        child: Text(
          'Kottayam',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(height: 20), // Adds space between the paragraph and row
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
  width: 100,
  height: 600,
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(16.0), // Apply the same radius to the image
    child: Image.asset('images/logo.jpg' // Replace with your image URL
    ),
  ),
),

          SizedBox(width: 20), // Adds space between the containers
          Column(
            children: [
                SizedBox(width: 20), // Adds space between the containers
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Container 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          
          
          SizedBox(height: 20), // Adds space between the containers
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
               SizedBox(height: 20), // Adds space between the containers
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
               SizedBox(height: 20), // Adds space between the containers
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          
          
        ],
      ),
    ],
  ),
),

    );
  }
}
