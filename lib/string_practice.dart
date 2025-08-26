String reverseString(String str) {
  String reversed = str.split('').reversed.join('');

  return reversed;
}

Map<String, int> countOccurrences(String str) {
  Map<String, int> occurrences = {};

  List<String> ltrs = str.split('');

  // Do not need to check if it contains the key
  // We use the '??' operator to avoid null pointer exceptions.

  // Use a for-in loop to iterate over the list of characters.
  // If the character is already a key in the map, increment its value by 1.
  // Otherwise, add the character as a new key with a value of 1.

  // The '??' operator is a null-aware operator in Dart.
  // It returns the right-hand side if the left-hand side is null,
  // otherwise it returns the left-hand side.
  for (String ltr in ltrs) {
    occurrences[ltr] = (occurrences[ltr] ?? 0) + 1;
  }

  return occurrences;
}

bool isAnagram(String str1, String str2, bool ignoreCase) {
  // Convert both strings to lowercase if ignoreCase is true.
  if (ignoreCase) {
    str1 = str1.toLowerCase();
    str2 = str2.toLowerCase();
  }

  // Count the occurrences of each character in both strings.
  Map<String, int> occurrences1 = countOccurrences(str1);
  Map<String, int> occurrences2 = countOccurrences(str2);

  // Check if the lengths of the maps are equal and
  // if all characters have the same count.
  if (occurrences1.length != occurrences2.length) {
    return false;
  }

  for (String ltr in occurrences1.keys) {
    if (occurrences1[ltr] != occurrences2[ltr]) {
      return false;
    }
  }

  return true;
}

// Remove duplicate letters from a string, while maintaining the original order.
String removeDuplicates(String str) {
  String result = '';

  // Convert the string to a list of characters.
  List<String> ltrs = str.split('');

  // Use a Set to keep track of unique characters.
  Set<String> uniqueLtrs = ltrs.toSet();

  // Use a for-in loop to iterate over the unique characters.
  for (String ltr in uniqueLtrs) {
    result += ltr;
  }

  return result;
}

String removeDups(String str) {
  StringBuffer result = StringBuffer();

  // Convert the string to a list of characters.
  List<String> ltrs = str.split('');

  // Use a Set to keep track of unique characters.
  Set<String> uniqueLtrs = {};

  // Use a for-in loop to iterate over the list of characters.
  for (String ltr in ltrs) {
    String lower = ltr.toLowerCase();

    if (!uniqueLtrs.contains(lower)) {
      uniqueLtrs.add(lower);
      //result += lower;
      result.write(lower);
    }
  }

  return result.toString();
}

String replaceAllLtrs(String str1, String repl1, String repl2) {
  String result = str1.replaceAll(repl1, repl2);

  return result;
}

Map<String, int> countOccurrencesWords(String str, bool ignoreCase) {
  Map<String, int> occurrences = {};

  if (ignoreCase) {
    str = str.toLowerCase();
  }

  List<String> ltrs = str.split(' ');

  // Do not need to check if it contains the key
  // We use the '??' operator to avoid null pointer exceptions.

  // Use a for-in loop to iterate over the list of characters.
  // If the character is already a key in the map, increment its value by 1.
  // Otherwise, add the character as a new key with a value of 1.

  // The '??' operator is a null-aware operator in Dart.
  // It returns the right-hand side if the left-hand side is null,
  // otherwise it returns the left-hand side.
  for (String ltr in ltrs) {
    occurrences[ltr] = (occurrences[ltr] ?? 0) + 1;
  }

  return occurrences;
}

bool isSubstring(String str, String subStr) {
  // Use the 'contains' method to check if the substring is present in the string.
  return str.contains(subStr);
}

int subStringIndex(String str, String subStr) {
  // Use the 'indexOf' method to find the index of the substring in the string.
  int index = str.indexOf(subStr);

  return index;
}

bool isPalindrome(String str1, bool ignoreCase, bool ignorePunctuation) {
  // Convert both strings to lowercase if ignoreCase is true.
  if (ignoreCase) {
    str1 = str1.toLowerCase();
  }

  if (ignorePunctuation) {

    // Remove alphanumeric - punctuation using a regular expression.
    // Not a-z and 0-9 will be replaced with an empty string.
    str1 = str1.replaceAll(RegExp(r'[^a-z0-9]'), '');
  }
  // Reverse the strings.
  String reversedStr1 = reverseString(str1);

  // Check if the reversed strings are equal.
  return str1 == reversedStr1;
}
