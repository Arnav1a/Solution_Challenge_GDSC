import 'package:flutter/material.dart';
import 'notification_detail.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: listView(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Notification Screen'),
    );
  }

  Widget listView(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListViewItem(context, index);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 0);
      },
      itemCount: 15,
    );
  }

  Widget ListViewItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(context, index),
                TimeAndDate(index),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(
        Icons.notifications_active_outlined,
        size: 25,
        color: Colors.blue,
      ),
    );
  }

  Widget message(BuildContext context, int index) {
    double textSize = 14;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationDetails()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: 'Message',
                style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5, width: 5), // Adding space between Message and Description
          ],
        ),
      ),
    );
  }

  Widget TimeAndDate(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 10, left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '18-01-2024',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            '18-01-2024',
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
