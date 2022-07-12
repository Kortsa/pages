// ignore_for_file: prefer_const_con, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIkdxz_4N2z3einDPSuBKvmrkllYtfzKi4gA&usqp=CAU'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Leo',
                style: GoogleFonts.roboto(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Software Engineer',
                style: GoogleFonts.roboto(fontSize: 16.0),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text('Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text('Options'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
