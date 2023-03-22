import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '/components/components.dart';
import '/core/services/local_notification.dart';

class TimepickerPage extends StatefulWidget {
  const TimepickerPage({super.key});

  @override
  State<TimepickerPage> createState() => _TimepickerPageState();
}

class _TimepickerPageState extends State<TimepickerPage> {
  DateTime? scheduleTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timepicker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTimePicker(
                label: 'Time',
                hint: 'Select time',
                onChanged: (TimeOfDay value) {
                  DateTime time = DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    DateTime.now().day,
                    value.hour,
                    value.minute,
                  );
                  setState(() {
                    scheduleTime = time;
                  });
                },
              ),
              const SizedBox(height: 20),
              if (scheduleTime != null)
                Text(
                  scheduleTime.toString(),
                ),
              const SizedBox(height: 20),
              AppFilledButton(
                label: 'Schedule',
                onPressed: () {
                  NotificationService().scheduleNotification(
                    id: 0,
                    title: 'Scheduled Notification',
                    body: 'This is a scheduled notification',
                    scheduledNotificationDateTime: scheduleTime!,
                    payLoad: 'Hello world',
                  );
                },
              ),

              const Divider(),

              // list pending notifications

              AppFilledButton(
                label: 'List Pending Notifications',
                onPressed: () async {
                  List<PendingNotificationRequest> pendingNotifications =
                      await NotificationService()
                          .notificationsPlugin
                          .pendingNotificationRequests();

                  // pendingNotifications.clear();
                  debugPrint(pendingNotifications.toString());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
