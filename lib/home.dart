import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notifi/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Icon(Icons.circle_notifications),
          onPressed: () {
            Notify();
          },
        ),
        // child: ElevatedButton(
        //     onPressed: () => AwesomeNotifications()
        //             .isNotificationAllowed()
        //             .then((isAllowed) {
        //           showDialog(
        //               context: context,
        //               builder: ((context) => AlertDialog(
        //                     title: Text("Allow Notification"),
        //                     content: Text('Our App Like'),
        //                     actions: [
        //                       TextButton(
        //                           onPressed: () {}, child: Text("Rejected")),
        //                       TextButton(
        //                           onPressed: () {

        //                           }, child: Text("Accepted"))
        //                     ],
        //                   )));
        //         }),
        //     child: Icon(Icons.circle_notifications)),
      ),
    );
  }
}

void Notify() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 1,
      channelKey: 'key1',
      title: 'This is Notification title',
      body: 'This is Body Notifcation',

      // notificationLayout: NotificationLayout.Messaging
    ),
    // actionButtons: [
    //   NotificationActionButton(
    //     key: "Accept",
    //     label: '${NotificationPage}',
    //     //    actionType: ActionType.SilentAction
    //   ),
    //   NotificationActionButton(
    //     key: "Rejected",
    //     label: 'Rejected',
    //     // actionType: ActionType.SilentAction
    //   ),
    // ],
  );
}
