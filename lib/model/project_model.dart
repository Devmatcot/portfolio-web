import 'package:flutter/material.dart';

class ProjectModel {
  String projectName;
  String projectDetails;
  String firstImage;
  String detailImage;
  Color color;
  ProjectModel(
      {required this.detailImage,
      required this.firstImage,
      required this.projectDetails,
      required this.projectName,
      required this.color,
      });
}
