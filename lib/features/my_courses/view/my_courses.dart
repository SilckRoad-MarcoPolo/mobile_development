import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/course_content/view/course_content.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';

class MyCourses extends StatelessWidget {
  // Dummy data for the three sections
  final Map<String, dynamic> backendCourse1 = {
    'name': 'Bootstrap',
    'instructor': 'Charlie Johnson',
    'progress': 80,
    'image': 'assets/images/trending/bootstrap.png',
  };

  final Map<String, dynamic> backendCourse2 = {
    'name': 'React',
    'instructor': 'Eve Thompson',
    'progress': 50,
    'image': 'assets/images/trending/react.png',
  };

  final Map<String, dynamic> backendCourse3 = {
    'name': 'Python',
    'instructor': 'Liam Matthews',
    'progress': 30,
    'image': 'assets/images/trending/python.png',
  };

  final Map<String, dynamic> frontendCourse1 = {
    'name': 'Bootstrap',
    'instructor': 'Alice Williams',
    'progress': 80,
    'image': 'assets/images/trending/bootstrap.png',
  };

  final Map<String, dynamic> frontendCourse2 = {
    'name': 'Data Analysis',
    'instructor': 'David Johnson',
    'progress': 50,
    'image': 'assets/images/trending/data_analysis.png',
  };

  final Map<String, dynamic> frontendCourse3 = {
    'name': 'Docker',
    'instructor': 'Emily Adams',
    'progress': 30,
    'image': 'assets/images/trending/docker.png',
  };

  final Map<String, dynamic> designCourse1 = {
    'name': 'Figma',
    'instructor': 'Megan Lee',
    'progress': 80,
    'image': 'assets/images/trending/figma.png',
  };

  final Map<String, dynamic> designCourse2 = {
    'name': 'Illustration',
    'instructor': 'Michael Green',
    'progress': 40,
    'image': 'assets/images/trending/illustration.png',
  };

  final Map<String, dynamic> designCourse3 = {
    'name': 'Photoshop',
    'instructor': 'Sophia Clark',
    'progress': 80,
    'image': 'assets/images/trending/photoshop.png',
  };

  MyCourses({super.key});

  Widget buildCourseCard(BuildContext context, Map<String, dynamic> course) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CourseContent()));
        },
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color.fromRGBO(196, 196, 196, 0.7),
            width: 1.5,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: (100 / 430) * ScreenUtils.screenWidth(context),
              height: (80 / 932) *
                  ScreenUtils.screenHeight(
                      context), // Explicit height and width
              child: Image.asset(
                course['image'],
                fit: BoxFit.cover, // Ensures the image fits within the box
              ),
            ),
          ),
        ),
        title: Text(
          course['name'],
          style: TextStyle(
            fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
            fontWeight: FontWeight.w500,
            color: const Color(0xff3F3F3F),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              course['instructor'],
              style: TextStyle(
                fontSize: (10 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(125, 0, 0, 0),
              ),
            ),
            Text(
              "40 hrs",
              style: TextStyle(
                fontSize: (8 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(125, 0, 0, 0),
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: (50 / 432) * ScreenUtils.screenWidth(context),
                  height: (50 / 432) * ScreenUtils.screenWidth(context),
                  child: CircularProgressIndicator(
                    value: course['progress'] != null
                        ? course['progress'] / 100
                        : 0, // Add progress logic if available
                    strokeWidth: 2,
                    backgroundColor: Color(0x78ffc100),
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ),
                Text(
                  '${course['progress'] ?? 0}%', // Display progress
                  style: TextStyle(
                    fontSize: (12 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCourseSection(
    BuildContext context,
    String sectionTitle,
    Map<String, dynamic> course1,
    Map<String, dynamic> course2,
    Map<String, dynamic> course3,
    Gradient gradient,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: (16 / 932) * ScreenUtils.screenHeight(context),
            horizontal: (15 / 432) * ScreenUtils.screenWidth(context),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: (5 / 932) * ScreenUtils.screenHeight(context),
                  horizontal: (15 / 432) * ScreenUtils.screenWidth(context),
                ),
                decoration: BoxDecoration(
                  gradient: gradient,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  sectionTitle,
                  style: TextStyle(
                    fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseContent()));
                },
                child: Text(
                  'view all',
                  style: TextStyle(
                    fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                    color: const Color(0xffFDDD7B),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: buildCourseCard(context, course1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: buildCourseCard(context, course2),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: buildCourseCard(context, course3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Courses",
          style: TextStyle(
              fontSize: (22 / 932) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w600),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: CustOmSearch(),
            ),
            buildCourseSection(
              context,
              "Backend development",
              backendCourse1,
              backendCourse2,
              backendCourse3,
              const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFEB996E), Color(0xFFF2BDAC)],
              ),
            ),
            buildCourseSection(
              context,
              "Frontend development",
              frontendCourse1,
              frontendCourse2,
              frontendCourse3,
              const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFDDAF73), Color(0xFFFFCE51)],
              ),
            ),
            buildCourseSection(
              context,
              "UX/UI design",
              designCourse1,
              designCourse2,
              designCourse3,
              const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFF9C956), Color(0xFFF1C1B5)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
