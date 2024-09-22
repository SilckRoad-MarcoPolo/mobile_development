import 'package:flutter/material.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses_card.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';
import '../../videos/views/coures_page.dart';

class CourseContent extends StatelessWidget {
  // Sample list of course data
  final List<Map<String, dynamic>> courses = [
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
  ];

  CourseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GradiantColorHeader(
              title: "Python Course",
              icon: true,
              function: (){Navigator.pop(context);},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  var course = courses[index];
                  return TrendingCoursesCard(course: course,borderColor: Color(
                      0xb3c4c4c4),ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CouresPage()));
                  },);
                },
                childCount: courses.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
