class DoctorData {
  final String doctorName;
  final String section;
  final String location;
  final String? timeRange;
  final double? rating;
  final String imagePath;

  DoctorData({
    required this.doctorName,
    this.section = 'Dermatologist',
    required this.location,
     this.timeRange,
    required this.rating,
    required this.imagePath
  });
}

//this is the dummydata


List<DoctorData> dummyDoctorData = [
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. John Smith',
    location: '123 Main St',
    rating: 4,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Sarah Johnson',
    location: '456 Elm St',
    timeRange: '2:00 PM - 4:00 PM',
    rating: 4.2,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. David Brown',
    location: '789 Oak St',
    timeRange: '10:30 AM - 1:00 PM',
    rating: 4.7,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Emily Wilson',
    location: '567 Pine St',
    timeRange: '8:30 AM - 10:00 AM',
    rating: 4.9,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Lisa Martinez',
    location: '890 Cedar St',
    timeRange: '3:30 PM - 5:30 PM',
    rating: 4.1,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Michael Johnson',
    location: '234 Birch St',
    timeRange: '1:30 PM - 3:30 PM',
    rating: 4.6,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. Jennifer Adams',
    location: '345 Oak St',
    timeRange: '9:30 AM - 12:00 PM',
    rating: 4.3,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. James Clark',
    location: '456 Cedar St',
    timeRange: '11:00 AM - 1:30 PM',
    rating: 4.8,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. Mary Davis',
    location: '567 Elm St',
    timeRange: '2:30 PM - 4:30 PM',
    rating: 4.4,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Robert White',
    location: '678 Maple St',
    timeRange: '10:00 AM - 12:30 PM',
    rating: 4.0,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. Susan Lee',
    location: '123 Pine St',
    timeRange: '8:00 AM - 10:30 AM',
    rating: 4.7,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Daniel Taylor',
    location: '789 Birch St',
    timeRange: '1:00 PM - 3:00 PM',
    rating: 4.2,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. Karen Miller',
    location: '456 Oak St',
    timeRange: '3:00 PM - 5:00 PM',
    rating: 4.9,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor2.jpg',
    doctorName: 'Dr. Richard Evans',
    location: '567 Pine St',
    timeRange: '11:30 AM - 2:00 PM',
    rating: 4.5,
  ),
  DoctorData(
    imagePath: 'lib/assets/images/doctor1.jpg',
    doctorName: 'Dr. Linda Wilson',
    location: '890 Cedar St',
    timeRange: '2:30 PM - 4:30 PM',
    rating: 4.3,
  ),
];
