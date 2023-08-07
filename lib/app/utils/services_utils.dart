class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Selenium',
    icon: 'assets/icons/selenium.png',
    description:
        "Selenium is an open-source automation testing tool that supports various scripting languages, including Python. It allows testers to automate interactions with web pages, perform tests on different browsers, and assess the browser's response to changes",
    tool: [],
  ),
  ServicesUtils(
    name: 'Appium',
    icon: 'assets/icons/appinium.svg',
    description:
        "Appium is an open-source mobile application UI testing framework that enables testers to automate the testing of native, hybrid, and web applications on various platforms such as Android, iOS, and Windows. It offers a unified API and supports cross-platform application testing, allowing testers to write test scripts that work seamlessly on multiple platforms",
    tool: [],
  ),
  ServicesUtils(
    name: 'Browserstack',
    icon: 'assets/icons/appinium.svg',
    description:
        "BrowserStack is a cloud web and mobile testing platform that offers developers the ability to test their websites and mobile applications across various browsers, operating systems, and real mobile devices on-demand. It was founded in 2011 by Ritesh Arora and Nakul Aggarwal in Mumbai, India",
    tool: [],
  ),
];
