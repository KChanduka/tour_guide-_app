//all the image paths are assigned to variables here





//logos
const String splashlogo = "assets/logo/splashscreenLogo.png";
const String onboardLogo = "assets/logo/onboardingLogo.png";
const String loginLogo = "assets/logo/loginPagesLogo.png";
// const String onboardLogo = "assets/logo/officeBag.svg";
// const String onboardingLogo = '''<svg width="200" height="195" viewBox="0 0 200 195" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
// <rect width="200" height="194.595" fill="url(#pattern0)" fill-opacity="0.6"/>
// <defs>
// <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
// <use xlink:href="#image0_170_1096" transform="matrix(0.00395854 0 0 0.00404716 -0.000434753 0)"/>
// </pattern>
// <image id="image0_170_1096" width="310" height="319" xlink:href="data:image/png;base64,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"/>
// </defs>
// </svg>
// ''';

//onboarding
  // images
  const String onboarding1 = 'assets/images/onboarding/Onboarding1.png';
  const String onboarding2 = 'assets/images/onboarding/Onboarding2.png';
  const String onboarding3 = 'assets/images/onboarding/Onboarding3.png';
  // const String onboarding1 = 'assets/images/onboarding/Onboarding1.svg';
  // const String onboarding2 = 'assets/images/onboarding/Onboarding2.svg';
  // const String onboarding3 = 'assets/images/onboarding/Onboarding3.svg';
  

  //login pages
    //company logos
    const String facebook = "assets/images/login/facebook.png";
    const String google = "assets/images/login/google.png";
    const String apple = "assets/images/login/apple.png";