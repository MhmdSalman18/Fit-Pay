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
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
          IconButton(
            icon: const Icon(Icons.circle),
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
            const DrawerHeader(
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
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    left: 16.0), // Optional padding around the heading
                child: Text(
                  'Health and fitness gym',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10), // Adds space between heading and paragraph
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.0), // Optional padding around the paragraph
                child: Text(
                  'Kottayam',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20), // Adds space between the paragraph and row
                Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(
                      16.0), // Adjust the radius as needed
                    ),
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      16.0), // Apply the same radius to the image
                    child: Image.asset(
                      'images/logo.jpg' // Replace with your image URL
                    ),
                    ),
                  ),
                  const SizedBox(width: 20), // Adds space between the containers
                  Flexible(
                    child: Column(
                    children: [
                      const SizedBox(width: 20), // Adds space between the containers
                      Flexible(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: const Center(
                        child: Text(
                          'Container 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        ),
                      ),
                      ),
                      const SizedBox(height: 20), // Adds space between the containers
                      Flexible(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: const Center(
                        child: Text(
                          'Container 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        ),
                      ),
                      ),
                      const SizedBox(height: 20), // Adds space between the containers
                      Flexible(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: const Center(
                        child: Text(
                          'Container 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        ),
                      ),
                      ),
                      const SizedBox(height: 20), // Adds space between the containers
                      Flexible(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: const Center(
                        child: Text(
                          'Container 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        ),
                      ),
                      ),
                    ],
                    ),
                  ),
                  ],
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
