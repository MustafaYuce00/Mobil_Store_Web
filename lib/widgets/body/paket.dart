import 'package:flutter/material.dart';

paket(context, index, String paketBaslik, String paketIcerik, String paketFiyat,
    String img) {
  return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey[100],
      ),
      child: ListTile(
        title: Text(paketBaslik),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              img,
              fit: BoxFit.fitWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Text(
                    paketIcerik,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 7,
                  ),
                ),
        
                Text(paketFiyat),
              ],
            ),
          ],
        ),
      ));
}
