import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:show_room_apps/module/dashboard/service/dashboard_provider.dart';
import 'package:show_room_apps/utils/standartext.dart';

class DashboardScreen extends StatefulWidget {
  static final String route = "DashboardScreen";

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _provider = Provider.of<DashboardProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: size.width * 0.06),
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PosText.labelHitamBold("Hello, ", size.width * 0.05),
                  PosText.labelAbu(
                      DateFormat("dd-MM-yyyy").format(DateTime.now()),
                      size.width * 0.03),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    height: size.height * 0.25,
                    width: size.width * 0.9,
                    child: Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Container(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    semanticContainer: true,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.6,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: size.height * 0.25,
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: size.height * 0.25,
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
