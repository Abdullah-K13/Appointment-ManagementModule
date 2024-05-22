import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Color(0xFF3E64FF),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 60,
            left: 15,
            child: GestureDetector(
              onTap: () {
                // Handle back button tap
                print('hi');
              },
              child: GestureDetector(
                onTap:() =>  Navigator.pop(context),
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.5, color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 130,
            child: Center(
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'nunito-extrabold',
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingItem> items;

  SettingsSection({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade100.withOpacity(0.24),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade100.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'poppins-semibold'
            ),
          ),
          SizedBox(height: 16),
          Column(
            children: items.map((item) {
              return GestureDetector(
                onTap: item.onTap,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Icon(item.icon),
                      SizedBox(width: 8),
                      Text(
                        item.text,
                        style: TextStyle(
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'nunito-regular',
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class SettingItem {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  SettingItem({required this.text, required this.icon, required this.onTap});
}
