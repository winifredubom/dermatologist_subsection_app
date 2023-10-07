class ContactData {
  final String text;
  final String subText;

  ContactData({
    required this.text,
    required this.subText
  });
}

List<ContactData> dummyContactData = [
  ContactData(text: 'Name', subText: 'Idara Joy Ubom'),
  ContactData(text: 'Date of Birth', subText: 'August 16'),
  ContactData(text: 'Gender', subText: 'Female'),
  ContactData(text: 'Address', subText: 'Emmanuel Bassey, Uyo, Akwa ibom, Nigeria'),
  ContactData(text: 'Phone Number', subText: '090374827446'),
  ContactData(text: 'Email', subText: 'Idarajoyubom@gmail.com'),
  ContactData(text: 'Weight', subText: '55kg'),
  ContactData(text: 'Height', subText: '5\'7 inches')
];
