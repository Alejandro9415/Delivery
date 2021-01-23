import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Menu'),
      ),
      floatingActionButton: Container(
        height: kToolbarHeight,
        width: kToolbarHeight,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 5,
                  color: Colors.pinkAccent.shade100)
            ]),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Material(
         borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        elevation: 10,
        child: Container(
          height: kToolbarHeight + 10,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.copy_outlined,
                color: Colors.grey,
              ),
              Icon(Icons.dashboard_outlined, color: Colors.grey),
              SizedBox.shrink(),
              Icon(Icons.notifications_none_outlined, color: Colors.grey),
              Icon(Icons.person_outline, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
