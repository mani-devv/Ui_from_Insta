class Jobs {
  final String companyName, jobTitle, logoImagePath, tag1, tag2;
  final int hourlyRate;

  Jobs({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.tag1,
    required this.tag2,
    required this.hourlyRate,
  });
}

List<Jobs> jobsForYou = [
  Jobs(
    companyName: "Apple",
    jobTitle: "Software Eng.",
    logoImagePath: "assets/icons/apple.png",
    tag1: "Full Time",
    tag2: "Remote",
    hourlyRate: 95,
  ),
  Jobs(
    companyName: "Google",
    jobTitle: "Product Dev",
    logoImagePath: "assets/icons/google.png",
    tag1: "Full Time",
    tag2: "Remote",
    hourlyRate: 80,
  ),
  Jobs(
    companyName: "Nike",
    jobTitle: "Product Man",
    logoImagePath: "assets/icons/nike.png",
    tag1: "Full Time",
    tag2: "Remote",
    hourlyRate: 20,
  ),
  Jobs(
    companyName: "Uber",
    jobTitle: "UI Designer",
    logoImagePath: "assets/icons/uber.png",
    tag1: "Full Time",
    tag2: "Remote",
    hourlyRate: 45,
  ),
];

class AppliedJobs {
  final String companyName, logoImagePath;

  AppliedJobs({
    required this.companyName,
    required this.logoImagePath,
  });
}

List<AppliedJobs> appliedList = [
  AppliedJobs(
    companyName: "Apple",
    logoImagePath: "assets/icons/apple.png",
  ),
  AppliedJobs(
    companyName: "Google",
    logoImagePath: "assets/icons/google.png",
  ),
  AppliedJobs(
    companyName: "Nike",
    logoImagePath: "assets/icons/nike.png",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

String listText =
    "• Lorem ipsum dolor sit.\n• Amet consectetuer adipiscing elit.\n• Diam nonummy nibh.\n• Euismod tincidunt ut laoreet.\n• Magna aliquam erat.\n• Volutpat ut wisi enim.\n• Minim veniam quis.\n• Nostrud exerci tation ullamcorper.\n• Lobortis nisl ut.\n• Aliquip ex ea commodo.\n";
