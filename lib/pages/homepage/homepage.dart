import 'package:flutter/material.dart';

import '../../utils/custom_widgets.dart';
import '../../utils/magic_strings.dart';
import 'components/homepage_header.dart';
import 'components/homepage_title.dart';
import 'components/homepage_calendar.dart';
import 'components/homepage_containers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: tabController,
            children: [
              const CustomScrollView(
                slivers: [
                  SliverPadding(padding: EdgeInsets.all(18)),
                  HomePageHeader(),
                  HomePageTitle(),
                  HomePageCalendarSegment(),
                  HomePageContainer1(),
                  HomePageContainer2(),
                  SliverPadding(padding: EdgeInsets.all(18)),
                ],
              ),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Theme.of(context).canvasColor,
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.white,
                tabs: [
                  const Icon(Icons.home),
                  const Icon(Icons.folder),
                  InkWell(
                    onTap: () => newTask(context),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Icon(Icons.message),
                  const Icon(Icons.account_circle_sharp),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> newTask(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.93,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "New Task",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Done",
                              style: TextStyle(color: Colors.blue),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: [
                        const TitleHeader(title: "Title"),
                        TextFormField(
                          decoration: textformfieldInputDecoration(
                              context, "Enter Title"),
                        ),
                        const TitleHeader(title: "Description"),
                        TextFormField(
                            maxLines: 100 ~/ 20,
                            decoration: textformfieldInputDecoration(
                              context,
                              "Enter task description",
                            )),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const TitleHeader(title: "Due date"),
                                  TextFormField(
                                    decoration:
                                        textformfieldInputDecorationWithSuffixIcon(
                                            context,
                                            "Enter task description",
                                            const Icon(Icons.calendar_month)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  const TitleHeader(title: "Estimate task"),
                                  TextFormField(
                                    decoration:
                                        textformfieldInputDecorationWithSuffixIcon(
                                            context,
                                            "Enter task description",
                                            const Icon(
                                                Icons.access_time_outlined)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const TitleHeader(title: "Priority"),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(13)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            child: Stack(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 42, vertical: 15),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      child: const Text(
                                        "Low",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 42, vertical: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      child: const Text("Medium")),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 42, vertical: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      child: const Text("High")),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const TitleHeader(title: "Members"),
                        TextFormField(
                          decoration:
                              textformfieldInputDecorationWithSuffixIcon(
                                  context,
                                  'Select members',
                                  const Icon(
                                      Icons.keyboard_arrow_down_outlined)),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              width: 180,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Image.asset(ImageNames.member,
                                      height: 40, width: 40),
                                  const Text("Dianne Russell"),
                                  const Icon(Icons.close)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
