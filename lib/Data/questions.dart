import 'package:quiz_app/Models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the role of the build method in a Flutter widget?',
    [
      'To describe how to display the widget in terms of other lower-level widgets',
      'To initialize the widget\'s state',
      'To handle user interactions',
      'To manage the widget\'s lifecycle',
    ],
  ),
  QuizQuestion(
    'Which of the following is true about keys in Flutter?',
    [
      'They help preserve the state of widgets across widget rebuilds',
      'They are used to identify widgets during testing',
      'They are optional and rarely used',
      'They define the type of the widget',
    ],
  ),
  QuizQuestion(
    'What is the difference between mainAxisAlignment and crossAxisAlignment in a Flex widget?',
    [
      'mainAxisAlignment aligns children along the main axis, crossAxisAlignment aligns children along the cross axis',
      'mainAxisAlignment aligns children along the cross axis, crossAxisAlignment aligns children along the main axis',
      'Both align children along the same axis',
      'Both are used to space children equally',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the Expanded widget in a Flutter layout?',
    [
      'To take up the remaining space in a flex container',
      'To make a widget fill the entire screen',
      'To give a widget a fixed size',
      'To center a widget within its parent',
    ],
  ),
  QuizQuestion(
    'How can you debug your Flutter app?',
    [
      'All of the above',
      'Using Flutter DevTools',
      'Using print statements',
      'Using the debug mode in IDEs',
    ],
  ),
  QuizQuestion(
    'What does the Navigator widget do in Flutter?',
    [
      'Manages a stack of routes to navigate between screens',
      'Manages the state of the app',
      'Handles animations in the app',
      'Renders the UI of the app',
    ],
  ),
  QuizQuestion(
    'What is a Flutter plugin?',
    [
      'A package that adds specific functionality to a Flutter app',
      'A tool for designing Flutter UIs',
      'A widget that can be used in multiple apps',
      'A library for handling state management',
    ],
  ),
];
