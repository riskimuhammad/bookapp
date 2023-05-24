class FormValidator {
  String? bookcode(String? value) {
    if (value!.isEmpty) {
      return 'Book Code tidak boleh kosong !';
    }
    if (value.length > 6) {
      return 'Book Code tidak boleh lebih dari 6 ';
    }
    return null;
  }
}
