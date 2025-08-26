import 'package:string_practice/string_practice.dart' as string_practice;

void main(List<String> arguments) {
  String inputString = 'Hello, World!';

  // Reverse a string
  print('Reverse a string: ${string_practice.reverseString(inputString)}');

  // Count occurrences of characters in a string
  String charactersToCount = 'flutterfly';
  print(
    'Count occurrences of characters: ${string_practice.countOccurrences(charactersToCount)}',
  );

  String firstWord = 'listen';
  String secondWord = 'silent';
  print('First word: $firstWord Second word: $secondWord');
  print(
    'Is amagram ?: ${string_practice.isAnagram(firstWord, secondWord, false)}',
  );

  firstWord = 'hello';
  secondWord = 'world';
  print('First word: $firstWord Second word: $secondWord');
  print(
    'Is anagram?: ${string_practice.isAnagram(firstWord, secondWord, false)}',
  );

  firstWord = 'Triangle';
  secondWord = 'Integral';
  print('First word: $firstWord Second word: $secondWord');
  print(
    'Is anagram?: ${string_practice.isAnagram(firstWord, secondWord, true)}',
  );

  String testString = 'MyNewString';
  List<String> testList = testString.split('');
  Map<int, String> testMap = testList.asMap();
  // {0: 'M', 1: 'y', 2: 'N', 3: 'e', 4: 'w', 5: 'S', 6: 't', 7: 'r', 8: 'i', 9: 'n', 10: 'g'}
  print('Test Map: $testMap');

  String tString = 'abcaaccdde';
  print('Remove duplicates: ${string_practice.removeDuplicates(tString)}');
  print('Remove dups: ${string_practice.removeDups(tString)}');

  List<String> letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'];

  List<String> upperLetters = letters
      .map((letter) => letter.toUpperCase())
      .toList();
  print('Uppercase letters: $upperLetters');

  String tString2 = 'abcdabbacceeedaabb';
  print(
    'Replace with x: ${string_practice.replaceAllLtrs(tString2, 'a', 'x')}`);',
  );

  String tString3 = 'This is to count the is number of words in of this string';
  print(
    'Count words: ${string_practice.countOccurrencesWords(tString3, false)}',
  );
  print(
    'Count words (case insensitive): ${string_practice.countOccurrencesWords(tString3, true)}',
  );

  String tString4 = 'This is a test';
  String subStr = 'his';
  print(
    'Is $subStr substring: ${string_practice.isSubstring(tString4, subStr)}',
  );
  print(
    '$subStr substring index: ${string_practice.subStringIndex(tString4, subStr)}',
  );

  String tString5 = 'radar';
  print('Is $tString5 a palindrome: ${string_practice.isPalindrome(tString5, false, false)}');

  String tString6 = 'ra -dar';
  print('Is $tString6 a palindrome: ${string_practice.isPalindrome(tString5, false, true)}');
}
