import 'package:flutter/material.dart';
import '../../../../data/models/userModels/user_models.dart';

class JobSeekerList extends StatelessWidget {
  final List<JobSeeker> jobSeekers;

  JobSeekerList({required this.jobSeekers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: jobSeekers.map(
        (jobSeeker) {
          return ListTile(
            // leading: Image.network(jobSeeker.profilePhoto ?? ''),
            title: Text(jobSeeker.fullName ?? 'Unknown'),
          );
        },
      ).toList(),
    );
  }
}
