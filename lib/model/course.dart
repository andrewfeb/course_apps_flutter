class Course {
  int id;
  int categoryId;
  String title;
  int totalDuration;
  int price;
  String description;
  double rate;
  int totalStudent;
  String cover;
  List<String> modules;

  Course({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.totalDuration,
    required this.price,
    required this.description,
    required this.rate,
    required this.totalStudent,
    required this.cover,
    required this.modules,
  });
}

var courseList = [
  Course(
      id: 1,
      categoryId: 1,
      title: 'Web Apps using Laravel 9',
      totalDuration: 34,
      price: 750000,
      description:
          'Laravel is a free, open source PHP web application framework, designed for the development of model-view-controller (MVC) web applications. In this training, we will begin by preparing a dev environment and learning how to install and configure Laravel. Laravel is modern, dynamic and powerful PHP Framework for web development. Laravel allows you to develop applications which are flexible, user-friendly and clean',
      rate: 4.0,
      totalStudent: 650,
      cover: 'assets/images/laravel.png',
      modules: [
        'Introduction to Laravel',
        'Installation and Configuration',
        'Routing and Controllers',
        'Middleware',
        'Request and Response',
        'View and Blade',
        'Database',
        'Eloquent ORM',
        'Form Validation',
        'Session',
        'Email',
        'Security'
      ]),
  Course(
      id: 2,
      categoryId: 1,
      title: 'Front-End Web Apps with React',
      totalDuration: 24,
      price: 650000,
      description:
          'ReactJS offers graceful solutions to some of front-end programming’s most persistent issues, allowing you to build dynamic and interactive web apps with ease. It’s fast, scalable, flexible, powerful, and has a robust developer community that’s rapidly growing. There’s never been a better time to learn React',
      rate: 4.7,
      totalStudent: 580,
      cover: 'assets/images/react.png',
      modules: [
        'Introduction to React',
        'React Router',
        'Single Page Applications',
        'React Forms and Flow Architecture',
        'Introduction to Redux',
        'Client-Server Communication',
        'React Animation',
        'Hooks'
      ]),
  Course(
      id: 3,
      categoryId: 1,
      title: 'ASP.NET Core MVC Web Apps',
      totalDuration: 30,
      price: 900000,
      description:
          'ASP.NET Core is a cross-platform, open-source framework for building modern cloud-optimized web applications. ASP.NET Core apps are lightweight and modular, with built-in support for dependency injection, enabling greater testability and maintainability. Combined with MVC, which supports building modern web APIs in addition to view-based apps, ASP.NET Core is a powerful framework with which to build enterprise web applications',
      rate: 4.5,
      totalStudent: 200,
      cover: 'assets/images/aspnet_core.png',
      modules: [
        'Introduction ASP.NET Core',
        'Middleware and Services',
        'Controllers',
        'Views',
        'Models',
        'Entity Framework Core',
        'Testing and Troubleshooting',
        'Security',
        'Implementing Web API'
      ]),
  Course(
      id: 4,
      categoryId: 1,
      title: 'Mobile Apps using Flutter',
      totalDuration: 24,
      price: 750000,
      description:
          'Flutter, a revolutionary new cross-platform software development kit created by Google, makes it easier than ever to write secure, high-performance native apps for iOS and Android. Flutter apps are blazingly fast because this open source solution compiles your Dart code to platform-specific programs with no JavaScript bridge! Flutter also supports hot reloading to update changes instantly. Goals this course are: able to create cross-platform mobile app with easy ways, especially on UI design. At the end of chapter will introduce how to upload application on Google Play store',
      rate: 4.5,
      totalStudent: 450,
      cover: 'assets/images/flutter.png',
      modules: [
        'Introduction to Flutter',
        'Basic Dart Programming',
        'Dart Function and OOP',
        'Flutter Widget',
        'Navigation and Routing',
        'Form and Validation',
        'HTTP Request',
        'Development'
      ]),
  Course(
      id: 5,
      categoryId: 3,
      title: 'Graphic Design',
      totalDuration: 24,
      price: 500000,
      description:
          'In Graphic Design Course you will learn to convey your ideas and messages using animation, graphics, and images. In order to excel in this field, you need to gain knowledge about marketing skills and electronic media packages. Graphic Design Course Content familiarizes you with the basics of balance, contrast, rhythm, movement, typography, etc. Designers can use the graphics created by them in Print Publications as well as for websites.',
      rate: 4.5,
      totalStudent: 450,
      cover: 'assets/images/graphic_design.png',
      modules: [
        'Introduction',
        'Coloring',
        'Typography',
        'Create Design Brief',
        'Design using Adobe Photoshop',
        'Design using Adobe Illustration',
      ]),
  Course(
      id: 6,
      categoryId: 3,
      title: 'Infographic',
      totalDuration: 18,
      price: 450000,
      description:
          'Why create an Infographic? Well, with infographics, you can communicate and simplify complex information in beautiful and engaging ways. Infographics are a great way to engage readers because they draw attention and they result in a lot of social sharing. A well thought out and well-designed infographic will be shared across social media platforms and get shared on websites.',
      rate: 3.5,
      totalStudent: 150,
      cover: 'assets/images/graphic_design.png',
      modules: [
        'Introduction',
        'Types of infographic',
        'Tools and Planning',
        'Infographic Aesthetic',
        'Colors',
        'Add the graph',
        'Creating the Timeline',
        'Creating the comparison chart'
      ]),
  Course(
      id: 7,
      categoryId: 4,
      title: '3D Asset Modeling',
      totalDuration: 18,
      price: 600000,
      description:
          '3D Asset Modeling is a great place to start as it is the foundation for all these career paths. Gain a deeper understanding of graphic design and illustration as you use 3D animation software to create virtual three-dimensional design projects. Hone in on your drawing, photography, and 3D construction techniques and develop the skills needed to navigate within a 3D digital modeling workspace. This course is an excellent introduction to careers in the fast-growing field of technology and design.',
      rate: 3.7,
      totalStudent: 250,
      cover: 'assets/images/asset_modeling.png',
      modules: [
        'What is 3D Asset Modeling?',
        'Creating 3D Environment',
        'Visual Elements',
        'The Power of Light and Shade',
        '3D Geometrics',
        'Texturing',
        'Rendering',
        'Environment Models'
      ]),
  Course(
      id: 8,
      categoryId: 2,
      title: 'Cisco Networking Fundamentals',
      totalDuration: 18,
      price: 450000,
      description:
          'Begin preparing for a networking career with this introduction to how networks operate. You’ll even get the chance to build simple local area networks (LANs). Developing a working knowledge of IP addressing schemes, foundational network security, you\'ll be able to perform basic configurations for routers and switches.',
      rate: 4.3,
      totalStudent: 350,
      cover: 'assets/images/network.png',
      modules: [
        'Introduction to Networking',
        'IP Addressing',
        'Routing',
        'Virtual LAN',
        'Network Security',
        'Troubleshooting',
        'Backup and Restore Configuration of Network',
      ]),
];
