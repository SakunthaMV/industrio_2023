import 'package:flutter/material.dart';

import 'package:industrio_2023/pages/schedule/schedule_card.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';
import 'package:timelines/timelines.dart';

class SchedulePage extends StatefulWidget {
  static const route = "Schedule";
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CommonPage(
      page: SchedulePage.route,
      content: Column(
        crossAxisAlignment: size.width > 650
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Event",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 105, 243, 240))),
                  SizedBox(width: 10),
                  Text(
                    "Schedule",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.9,
            child: Timeline.tileBuilder(
              shrinkWrap: true,
              builder: TimelineTileBuilder.connectedFromStyle(
                connectionDirection: ConnectionDirection.before,
                indicatorStyleBuilder: (context, index) =>
                    IndicatorStyle.outlined,
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                contentsAlign: size.width > 650
                    ? ContentsAlign.alternating
                    : ContentsAlign.basic,
                contentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: scheduleCard(),
                ),
                nodePositionBuilder: (context, index) =>
                    size.width > 650 ? 0.5 : 0.02,
                indicatorPositionBuilder: (context, index) => 0.2,
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
