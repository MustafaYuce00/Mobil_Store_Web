import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

footer(BuildContext context) {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'logo.png',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Column(
              children: [
                Textbutton("Home", () {}),
                SizedBox(height: 5),
                Textbutton("About", () {}),
                SizedBox(height: 5),
                Textbutton("Contact", () {}),
                SizedBox(height: 5),
                Textbutton("FAQ", () {}),
                SizedBox(height: 5),
                Textbutton("Blog", () {}),
              ],
            ),
            Column(
              children: [
                Textbutton("Privacy Policy", () {}),
                SizedBox(height: 5),
                Textbutton("Terms of Service", () {}),
                SizedBox(height: 5),
                Textbutton("Refund Policy", () {}),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mobil Store',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(height: 5),
                Text(
                  'Contact Us: contact@company.com',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(height: 5),
                // telefon +90 534 020 16 88
                Text(
                  'Tel: +90 534 020 16 88',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.facebook, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Ionicons.logo_twitter, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Ionicons.logo_instagram, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          '© 2024 Mobil Store',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    ),
  );
}

Textbutton(String text, Function onPressed) {
  return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: TextStyle(
            overflow: TextOverflow.ellipsis, color: Colors.white, fontSize: 13),
      ));
}
