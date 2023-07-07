import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskmanagement/utils/magic_strings.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails>
    with TickerProviderStateMixin {
  late TabController tabController;

  bool showMore = false;

  String text =
      'You need to choose themes for Dribbble shots for March and upload tasks. For help, you can contact @alexjohnson, he did such this some other time over yonder.';

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () => context.pop(),
                            icon: Icon(
                              Icons.adaptive.arrow_back,
                              color: Colors.black,
                            )),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share,
                                  color: Colors.black,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.edit, color: Colors.black))
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "March Dribbble Shot Design. Plan for the month",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 23),
                    SizedBox(
                      height: 50,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset(ImageNames.profilePicture,
                                  height: 30, width: 30),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assigned to",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "Floyd Wilson",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            right: 60,
                            top: 1,
                            child: Row(
                              children: [
                                DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(50),
                                  padding: const EdgeInsets.all(6),
                                  dashPattern: [5, 4],
                                  child: const ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Due date",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      "16 Feb",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TabBar(
                        tabs: const <Tab>[
                          Tab(text: "Overview"),
                          Tab(text: "Activity"),
                        ],
                        controller: tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Theme.of(context).primaryColor,
                        indicatorWeight: 1.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: SizedBox(
                                  height: showMore ? 80 : 70,
                                  child: Stack(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            const TextSpan(
                                                text:
                                                    'You need to choose themes for Dribbble shots for March and upload tasks. For help, you can contact',
                                                style: TextStyle(fontSize: 16)),
                                            const TextSpan(
                                                text: ' @alex.johnson',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 16)),
                                            const TextSpan(
                                              text: ' he did such',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            TextSpan(
                                              text: showMore
                                                  ? ' a task last month.'
                                                  : null,
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        bottom: showMore ? -17 : -18,
                                        child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                showMore = !showMore;
                                              });
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                if (showMore == false) ...[
                                                  const Icon(Icons
                                                      .keyboard_arrow_down_rounded),
                                                  const Text("read more")
                                                ] else ...[
                                                  const Icon(Icons
                                                      .keyboard_arrow_up_rounded),
                                                  const Text("read less")
                                                ],
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Subtasks",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Theme.of(context).primaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        const Text(
                                          "Create a content plan for March",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(13.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10),
                                        Text(
                                          "Add a subtask",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Attachments",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              //SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  children: [
                                    DottedBorder(
                                      borderType: BorderType.RRect,
                                      radius: const Radius.circular(12),
                                      padding: const EdgeInsets.all(24),
                                      color: Theme.of(context).primaryColor,
                                      child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          child: Icon(
                                            Icons.add,
                                            size: 18,
                                            color:
                                                Theme.of(context).primaryColor,
                                          )),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      height: 65.0,
                                      width: 65.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              ImageNames.attachment1),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      height: 65.0,
                                      width: 65.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              ImageNames.attachment2),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
