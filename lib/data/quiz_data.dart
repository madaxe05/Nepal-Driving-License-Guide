import 'dart:convert';
import '../models/quiz_question.dart';

class QuizData {
  static const String jsonContent = '''
{
  "bike_questions": [
    {
      "id": "bike_001",
      "questionEn": "What does a red triangle sign indicate?",
      "questionNp": "रातो त्रिभुज चिन्हले के संकेत गर्छ?",
      "optionsEn": [
        "Prohibition",
        "Warning",
        "Mandatory instruction",
        "Information"
      ],
      "optionsNp": [
        "निषेध",
        "चेतावनी",
        "अनिवार्य निर्देशन",
        "जानकारी"
      ],
      "correctIndex": 1,
      "explanationEn": "Red triangle signs are warning signs that alert drivers to potential hazards ahead.",
      "explanationNp": "रातो त्रिभुज चिन्हहरू चेतावनी चिन्हहरू हुन् जसले चालकहरूलाई अगाडिको सम्भावित खतराहरूको बारेमा सचेत गराउँछन्।",
      "category": "traffic_signs"
    },
    {
      "id": "bike_002",
      "questionEn": "Maximum speed limit inside Kathmandu city?",
      "questionNp": "काठमाडौं शहर भित्र अधिकतम गति सीमा?",
      "optionsEn": [
        "30 km/h",
        "40 km/h",
        "50 km/h",
        "60 km/h"
      ],
      "optionsNp": [
        "३० किमि/घण्टा",
        "४० किमि/घण्टा",
        "५० किमि/घण्टा",
        "६० किमि/घण्टा"
      ],
      "correctIndex": 1,
      "explanationEn": "The maximum speed limit inside Kathmandu city is 40 km/h for all vehicles.",
      "explanationNp": "काठमाडौं शहर भित्र सबै सवारी साधनका लागि अधिकतम गति सीमा ४० किमि/घण्टा हो।",
      "category": "traffic_rules"
    },
    {
      "id": "bike_003",
      "questionEn": "Minimum age for bike license?",
      "questionNp": "मोटरसाइकल लाइसेन्सको लागि न्यूनतम उमेर?",
      "optionsEn": [
        "14 years",
        "16 years",
        "18 years",
        "21 years"
      ],
      "optionsNp": [
        "१४ वर्ष",
        "१६ वर्ष",
        "१८ वर्ष",
        "२१ वर्ष"
      ],
      "correctIndex": 1,
      "explanationEn": "The minimum age to obtain a motorcycle license in Nepal is 16 years.",
      "explanationNp": "नेपालमा मोटरसाइकल लाइसेन्स प्राप्त गर्नको लागि न्यूनतम उमेर १६ वर्ष हो।",
      "category": "eligibility"
    },
    {
      "id": "bike_004",
      "questionEn": "Helmet is mandatory for:",
      "questionNp": "हेलमेट अनिवार्य छ:",
      "optionsEn": [
        "Rider only",
        "Passenger only",
        "Both rider and passenger",
        "Optional"
      ],
      "optionsNp": [
        "चालक मात्र",
        "यात्री मात्र",
        "चालक र यात्री दुवै",
        "वैकल्पिक"
      ],
      "correctIndex": 2,
      "explanationEn": "According to Nepal traffic rules, wearing a helmet is mandatory for both the rider and the passenger.",
      "explanationNp": "नेपाल ट्राफिक नियम अनुसार, चालक र यात्री दुवैको लागि हेलमेट लगाउनु अनिवार्य छ।",
      "category": "traffic_rules"
    },
    {
      "id": "bike_005",
      "questionEn": "Penalty for riding without helmet?",
      "questionNp": "हेलमेट बिना सवारी चलाउँदा जरिवाना?",
      "optionsEn": [
        "Rs. 200",
        "Rs. 500",
        "Rs. 1000",
        "No penalty"
      ],
      "optionsNp": [
        "रु. २००",
        "रु. ५००",
        "रु. १०००",
        "कुनै जरिवाना छैन"
      ],
      "correctIndex": 1,
      "explanationEn": "The fine for riding a motorcycle without a helmet is Rs. 500 in Nepal.",
      "explanationNp": "नेपालमा हेलमेट बिना मोटरसाइकल चलाउने जरिवाना रु. ५०० हो।",
      "category": "penalties"
    }
  ],
  "car_questions": [
    {
      "id": "car_001",
      "questionEn": "Minimum age for car license?",
      "questionNp": "कार लाइसेन्सको लागि न्यूनतम उमेर?",
      "optionsEn": [
        "16 years",
        "17 years",
        "18 years",
        "21 years"
      ],
      "optionsNp": [
        "१६ वर्ष",
        "१७ वर्ष",
        "१८ वर्ष",
        "२१ वर्ष"
      ],
      "correctIndex": 2,
      "explanationEn": "The minimum age to obtain a car driving license in Nepal is 18 years.",
      "explanationNp": "नेपालमा कार चालक अनुमतिपत्र प्राप्त गर्नको लागि न्यूनतम उमेर १८ वर्ष हो।",
      "category": "eligibility"
    },
    {
      "id": "car_002",
      "questionEn": "Highway speed limit in Nepal?",
      "questionNp": "नेपालमा राजमार्गको गति सीमा?",
      "optionsEn": [
        "60 km/h",
        "70 km/h",
        "80 km/h",
        "100 km/h"
      ],
      "optionsNp": [
        "६० किमि/घण्टा",
        "७० किमि/घण्टा",
        "८० किमि/घण्टा",
        "१०० किमि/घण्टा"
      ],
      "correctIndex": 2,
      "explanationEn": "The maximum speed limit on highways in Nepal is 80 km/h for cars.",
      "explanationNp": "नेपालमा कारहरूको लागि राजमार्गमा अधिकतम गति सीमा ८० किमि/घण्टा हो।",
      "category": "traffic_rules"
    },
    {
      "id": "car_003",
      "questionEn": "Seatbelt is mandatory for:",
      "questionNp": "सीटबेल्ट अनिवार्य छ:",
      "optionsEn": [
        "Driver only",
        "Front passengers only",
        "Driver and front passenger",
        "All passengers"
      ],
      "optionsNp": [
        "चालक मात्र",
        "अगाडि बस्ने यात्री मात्र",
        "चालक र अगाडि बस्ने यात्री",
        "सबै यात्रीहरू"
      ],
      "correctIndex": 2,
      "explanationEn": "Seatbelt is mandatory for the driver and front seat passenger in Nepal.",
      "explanationNp": "नेपालमा चालक र अगाडि बस्ने यात्रीको लागि सीटबेल्ट अनिवार्य छ।",
      "category": "traffic_rules"
    },
    {
      "id": "car_004",
      "questionEn": "What does ABS prevent?",
      "questionNp": "ABS ले के रोक्छ?",
      "optionsEn": [
        "Acceleration",
        "Wheel lock during braking",
        "Oversteering",
        "Engine stall"
      ],
      "optionsNp": [
        "गति वृद्धि",
        "ब्रेक लगाउँदा पाङ्ग्रा लक हुनु",
        "अत्यधिक स्टेयरिङ",
        "इन्जिन बन्द हुनु"
      ],
      "correctIndex": 1,
      "explanationEn": "ABS (Anti-lock Braking System) prevents wheel lock during hard braking, allowing better control.",
      "explanationNp": "ABS (एन्टी-लक ब्रेकिङ सिस्टम) ले कडा ब्रेक लगाउँदा पाङ्ग्रा लक हुनबाट रोक्छ, राम्रो नियन्त्रण दिन्छ।",
      "category": "vehicle_knowledge"
    },
    {
      "id": "car_005",
      "questionEn": "Penalty for not wearing seatbelt?",
      "questionNp": "सीटबेल्ट नलगाएको जरिवाना?",
      "optionsEn": [
        "Rs. 200",
        "Rs. 500",
        "Rs. 1000",
        "No penalty"
      ],
      "optionsNp": [
        "रु. २००",
        "रु. ५००",
        "रु. १०००",
        "कुनै जरिवाना छैन"
      ],
      "correctIndex": 1,
      "explanationEn": "The fine for not wearing a seatbelt is Rs. 500 in Nepal.",
      "explanationNp": "नेपालमा सीटबेल्ट नलगाएको जरिवाना रु. ५०० हो।",
      "category": "penalties"
    }
  ]
}
''';

  static List<QuizQuestion> getBikeQuestions() {
    final Map<String, dynamic> jsonData = json.decode(jsonContent);
    return (jsonData['bike_questions'] as List)
        .map((q) => QuizQuestion.fromJson(q))
        .toList();
  }

  static List<QuizQuestion> getCarQuestions() {
    final Map<String, dynamic> jsonData = json.decode(jsonContent);
    return (jsonData['car_questions'] as List)
        .map((q) => QuizQuestion.fromJson(q))
        .toList();
  }

  static List<QuizQuestion> getAllQuestions() {
    return [...getBikeQuestions(), ...getCarQuestions()];
  }
}
