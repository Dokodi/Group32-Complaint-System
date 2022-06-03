import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color backgroundColor = const Color(0xFF2d2d39);

class TransactionDetails {
  final String item;
  final String companyName;
  final String amount;
  final bool income;
  final IconData icon;

  TransactionDetails({
    required this.item,
    required this.amount,
    required this.income,
    required this.companyName,
    required this.icon,
  });
}

class dashBoard extends StatefulWidget {
  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 200);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  double mainBorderRadius = 0;
  Brightness statusIconColor = Brightness.dark;

  List<TransactionDetails> todayTransactionsList = [
    TransactionDetails(
      item: 'Electrical Complaint',
      companyName: 'Socket Damage',
      amount: "Pending",
      income: false,
      icon: Icons.computer,
    ),
    TransactionDetails(
      item: 'Plumbing Complaint',
      companyName: 'Tap not flowing',
      amount: "Pending",
      icon: Icons.transit_enterexit,
      income: false,
    ),
  ];

  List<TransactionDetails> yesterdayTransactionsList = [
    TransactionDetails(
      item: 'Furniture Complaint',
      companyName: 'Broken Chair',
      amount: "Pending",
      income: false,
      icon: Icons.headset,
    ),
    TransactionDetails(
      item: 'Electrical Problem',
      companyName: 'Fan not working',
      amount: "Complete",
      income: true,
      icon: Icons.cake,
    ),
    TransactionDetails(
      item: 'Human Complaint',
      companyName: 'Noise Making Neighbours',
      amount: "Complete",
      income: true,
      icon: Icons.transit_enterexit,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.7).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget menuItem({
    required IconData iconData,
    required String title,
    bool active: false,
  }) {
    return SizedBox(
      width: 0.5 * screenWidth,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Icon(
                iconData,
                color: (active) ? Colors.white : Colors.grey,
                size: 22,
              ),
            ),
            Expanded(
              flex: 14,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "$title",
                  style: TextStyle(
                    color: (active) ? Colors.white : Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomBar() {
    return Align(
      alignment: const Alignment(-1, 1),
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: IconButton(
                  highlightColor: Colors.red,
                  splashColor: Colors.greenAccent,
                  icon: const Icon(
                    Icons.home,
                    color: const Color(0xffa1a5b5),
                  ),
                  iconSize: 28,
                  onPressed: () {},
                )),
            Expanded(
              flex: 1,
              child: IconButton(
                iconSize: 28,
                icon: const Icon(
                  Icons.swap_horiz,
                  color: Color(0xffa1a5b5),
                  size: 28,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: const Icon(
                  Icons.show_chart,
                  color: const Color(0xffa1a5b5),
                ),
                iconSize: 28,
                onPressed: () {},
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                iconSize: 28,
                icon: const Icon(
                  Icons.notifications_none,
                  color: Color(0xffa1a5b5),
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                iconSize: 28,
                icon: const Icon(
                  Icons.person_outline,
                  color: const Color(0xffa1a5b5),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget transactionList(
    List<TransactionDetails> transactionList,
    String strDate, {
    bool lastElement: false,
  }) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: <Widget>[
        Container(
          child: Text(
            '$strDate',
            style: const TextStyle(
              color: Color(0xffadb2be),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.fromLTRB(5, 10, 5, (lastElement) ? 40 : 5),
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            TransactionDetails _transaction = transactionList[index];
            return Container(
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  )
                ],
              ),
              // padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      _transaction.icon,
                    ),
                  ],
                ),
                title: Text(
                  "${_transaction.item}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "${_transaction.companyName}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Text(
                  (_transaction.income)
                      ? _transaction.amount
                      : _transaction.amount,
                  style: TextStyle(
                    fontSize: 18,
                    color: (_transaction.income) ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          },
          itemCount: transactionList.length,
        ),
      ],
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      width: screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          borderRadius: BorderRadius.circular(mainBorderRadius),
          animationDuration: duration,
          color: const Color(0xfff4faff),
          child: SafeArea(
              child: Stack(
            children: <Widget>[
              ListView(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: <Widget>[
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 16,
                            left: 16,
                            right: 16,
                          ),
                          child: ListView(
                            physics: const ClampingScrollPhysics(),
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            shrinkWrap: true,
                            children: <Widget>[
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    "Transactions",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.settings,
                                      color: const Color(0xffa4a6b8),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              transactionList(todayTransactionsList, 'Today'),
                              transactionList(
                                  yesterdayTransactionsList, 'Yesterday',
                                  lastElement: true),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              bottomBar(),
            ],
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: statusIconColor,
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xff343442),
      body: Stack(
        children: <Widget>[
          dashboard(context),
        ],
      ),
    );
  }
}

// class dashboard extends StatelessWidget {
//   const dashboard({ Key? key }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//  const title = 'Grid List';
//
//    return MaterialApp(
//       home: Scaffold(
//        backgroundColor: Color.fromARGB(255, 204, 233, 230),
//         body:Container(
//           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/phyzick150600103.jpg"),
//           fit: BoxFit.cover,
//           ),
//           ),
//         child:SafeArea(child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//            Padding(padding: const EdgeInsets.fromLTRB(30, 110, 30, 0),
//             child: Text(
// "> Dashboard Options",
// style: TextStyle(color: Color.fromARGB(255, 255, 249, 249),
// fontSize: 24.0,
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.start,
//             ),),
//             Padding(padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
//             child: Center(
//               child: Wrap(
//                 spacing: 20.0,
//                 runSpacing: 20.0,
//                 children: [
// SizedBox(
//   width: 140.0,
//   height: 170.0,
//   child: Card(
//     color: Color.fromARGB(255, 233, 241, 245),
//     elevation: 2.0,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8.0)
//     ),
//     child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
//     child: Column(
//       children: [
//         Image.asset("assets/google-docs (2).png", width: 69.0),
//         SizedBox(height: 10.0),
//         Text("Pending Complaint", style: TextStyle(
//           color: Color.fromARGB(255, 26, 25, 25),
//           fontWeight: FontWeight.bold,
//           fontSize: 13.0,
//         ),),
//         SizedBox(height: 3.0),
//         Text(" 0 items", style: TextStyle(
//        color: Color.fromARGB(255, 82, 200, 216),
//         fontWeight: FontWeight.w100),)
//       ],
//     ),)),
//   ),
//
// ),
// SizedBox(
//   width: 140.0,
//   height: 170.0,
//   child: Card(
//       color: Color.fromARGB(255, 233, 241, 245),
//     elevation: 2.0,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8.0)
//     ),
//    child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
//     child: Column(
//       children: [
//         Image.asset("assets/google-docs (2).png", width: 64.0),
//         SizedBox(height: 10.0),
//         Text("In-progress complaint", style: TextStyle(
//           color: Color.fromARGB(255, 26, 25, 25),
//           fontWeight: FontWeight.bold,
//           fontSize: 13.0,
//         ),),
//         SizedBox(height: 1.0),
//         Text(" 1 items", style: TextStyle(
//         color: Color.fromARGB(255, 82, 200, 216),
//         fontWeight: FontWeight.w100),)
//       ],
//     ),)),
//   ),
//
// ),
// SizedBox(
//   width: 140.0,
//   height: 170.0,
//   child: Card(
//      color: Color.fromARGB(255, 233, 241, 245),
//     elevation: 2.0,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8.0)
//     ),
//   child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
//     child: Column(
//       children: [
//         Image.asset("assets/google-docs (2).png", width: 64.0),
//         SizedBox(height: 10.0),
//         Text("Completed Complaint", style: TextStyle(
//           color: Color.fromARGB(255, 26, 25, 25),
//           fontWeight: FontWeight.bold,
//           fontSize: 13.0,
//         ),),
//         SizedBox(height: 1.0),
//         Text(" 2 items", style: TextStyle(
//         color: Color.fromARGB(255, 82, 200, 216),
//         fontWeight: FontWeight.w100),)
//       ],
//     ),)),
//   ),
//
// ),
//                 ],
//               ),
//             ),
//             ),
//
//           ],
//         ),
//         ),
//         ),
//       ),
//       );
//   }
// }
