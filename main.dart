import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Color(0xFFF6F6F6),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Color attendanceColor = Color(0xFFD9E8C6);
  final Color feeColor = Color(0xFFF5C6C8);
  final Color campusEventsColor = Color(0xFFD2CDFA);
  final Color campusClubsColor = Color(0xFFB7D6DC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Icon(Icons.menu, color: Colors.black, size: 28),
        ),
        title: SizedBox(
          height: 40,
          child: Image.network( // Replace this URL with your asset or network image for logo
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG093BKAiGILvXT6VHvadTI3tYjgc3LB-DPIy16e1dje7eFARTxvShzaBdiNaASFk07Mk&usqp=CAU',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.camera_alt_outlined, color: Colors.black, size: 28),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            // Greeting Card
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi M Venkateshwarlu,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Good Afternoon,  Friday, 29 August',
                    style: TextStyle(fontSize: 14, letterSpacing: 1.1),
                  ),
                  Divider(height: 30, thickness: 1, color: Colors.grey.shade300),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('View Schedule',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 30),

            // Essentials Label
            Text(
              'ESSENTIALS',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 1.1,
                fontSize: 13,
              ),
            ),

            SizedBox(height: 15),

            // Essentials Cards grid
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                // Attendance Card
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: attendanceColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[600],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.calendar_today, color: Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Attendance',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Attendance',
                          style: TextStyle(fontSize: 13, color: Colors.black87),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '80.1 %',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            Icon(Icons.sync, color: Colors.indigo[900]),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'As on Aug 29, 10: 40 AM',
                          style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),

                // Fee Payments
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: feeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.pink[400],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Icon(Icons.account_balance_wallet_outlined,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Fee Payments',
                              style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Dues',
                              style: TextStyle(fontSize: 13, color: Colors.black87),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'INR  2,500.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 18),
                                ),
                                Icon(Icons.sync, color: Colors.indigo[900]),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'As on Aug 29, 10: 39 AM',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Campus Events
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: campusEventsColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[700],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.location_on, color: Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Campus Events',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                // Campus Clubs
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: campusClubsColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.teal[700],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.group, color: Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Campus Clubs',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            // Tools section can be added here if needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.indigo.shade900,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.home_outlined),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

