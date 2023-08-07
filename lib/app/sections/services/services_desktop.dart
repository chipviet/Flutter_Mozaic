part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8)
          .copyWith(bottom: height * 0.2),
      child: Column(
        children: [
          const CustomSectionHeading(text: '\n'),
          OutlinedButton(
            onPressed: () => (''),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.black,
                width: 1,
                style: BorderStyle.solid,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(70), // Set border radius here
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Text(
                'Automated testing',
                style: TextStyle(
                  fontSize: 18,
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                ), 
              ),
            ),
          ),
          const CustomSectionHeading(text: '\nAutomate regression and uat testing with our TAaaS!'),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          Space.y(6.w)!,
          Wrap(
            spacing: width * 0.03,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: servicesUtils
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(service: e.value),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
