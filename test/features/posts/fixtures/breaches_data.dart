import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';

const breachModel = BreachModel(
  domain: 'adobe.com',
  name: 'Adobe',
  title: 'Adobe',
  compromisedData: ["Email addresses", "Password hints", "Passwords", "Usernames"],
  logoPath: "https://haveibeenpwned.com/Content/Images/PwnedLogos/Adobe.png",
);

const breachJson = {
  "Name": "Adobe",
  "Title": "Adobe",
  "Domain": "adobe.com",
  "DataClasses": ["Email addresses", "Password hints", "Passwords", "Usernames"],
  "LogoPath": "https://haveibeenpwned.com/Content/Images/PwnedLogos/Adobe.png"
};

const List<BreachModel> breachesSample = [
  BreachModel(
    domain: 'adobe.com',
    name: 'Adobe',
    title: 'Adobe',
    compromisedData: ["Email addresses", "Password hints", "Passwords", "Usernames"],
    logoPath: "https://haveibeenpwned.com/Content/Images/PwnedLogos/Adobe.png",
  ),
  BreachModel(
    domain: 'battlefieldheroes.com',
    name: 'BattlefieldHeroes',
    title: 'Battlefield Heroes',
    compromisedData: ["Passwords", "Usernames"],
    logoPath: 'https://haveibeenpwned.com/Content/Images/PwnedLogos/BattlefieldHeroes.png',
  ),
];

const breachesSampleJson = <Map<String, dynamic>>[
  {
    "Name": "Adobe",
    "Title": "Adobe",
    "Domain": "adobe.com",
    "DataClasses": ["Email addresses", "Password hints", "Passwords", "Usernames"],
    "LogoPath": "https://haveibeenpwned.com/Content/Images/PwnedLogos/Adobe.png"
  },
  {
    "Name": "BattlefieldHeroes",
    "Title": "Battlefield Heroes",
    "Domain": "battlefieldheroes.com",
    "DataClasses": ["Passwords", "Usernames"],
    "LogoPath": "https://haveibeenpwned.com/Content/Images/PwnedLogos/BattlefieldHeroes.png"
  }
];
