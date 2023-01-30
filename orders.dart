import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  String appBarTitle = 'الطلبات';

  String image = 'lib/images/bro.svg';

  String text1 = 'مبروك! جميع الطلبات لديك مدفوعة';

  late TabController _tabController;

  final _selectedColor = Color(0xff009CD9);

  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(text: 'مودوعة'),
    Tab(text: 'مدفوعة'),
    Tab(text: 'غير مدفوعة'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: GoogleFonts.tajawal(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 70),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            margin: EdgeInsets.all(20),
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Color(0xFF878787), width: 0.3),
            ),
            child: TabBar(
                indicatorWeight: 1.17,
                labelStyle: GoogleFonts.tajawal(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                controller: _tabController,
                unselectedLabelColor: Color(0xFF222222),
                labelColor: Colors.white,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: _selectedColor,
                ),
                tabs: _tabs),
          ),
          Expanded(
              child: Center(
            child: TabBarView(
              controller: _tabController,
              children: [
                TabView1(),
                TabView2(),
                TabView3(),
              ],
            ),
          ))
        ],
      ),
    );
  }

  TabView1() {
    return Container();
  }

  TabView2() {
    return Container();
  }

  TabView3() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset(image),
      SizedBox(height: 24),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 86),
        child: Text(
          text1,
          style: GoogleFonts.tajawal(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700)),
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }
}
