import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/magic_strings.dart';

class HomePageContainer2 extends StatelessWidget {
  const HomePageContainer2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF383434),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Text(
                        "Medium",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 17,
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Create the "Blog" and "Product" pages for the FortRoom website',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 14),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "16 Feb - 11:00 PM",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      ImageNames.profilePicture,
                      height: 30,
                      width: 30,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 7),
                        Text(
                          "4",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.attach_file,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "16",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageContainer1 extends StatelessWidget {
  const HomePageContainer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: InkWell(
        onTap: () => context.pushNamed(RouteNames.taskDetails),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "High",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.share,
                          color: Colors.black,
                          size: 17,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "March Dribble Shots Design. Plan for the month",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 14),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "16 Feb",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ImageNames.profilePicture,
                        height: 30,
                        width: 30,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(width: 7),
                          Text(
                            "4",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.attach_file,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "16",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
