import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.green,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: PreferredSize(
                child: AppBar(
                  shadowColor: Colors.blue,
                  bottom: TabBar(
                    tabs: [
                      Text('Test 1'),
                      Text('Test 2'),
                      Text('Test 3'),
                    ],
                    controller: _tabController,
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    isScrollable: true,
                  ),
                ),
                preferredSize: Size.fromHeight(50),
              ),
              body: Container(
                child: TabBarView(
                  children: [
                    Container(
                      child: Center(
                        child: Text('More 1'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('More 2'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('More 3'),
                      ),
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
