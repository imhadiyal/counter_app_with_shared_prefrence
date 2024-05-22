import 'package:flutter/material.dart';
import 'package:theme/modals/contact_modal.dart';

class ContactProvider extends ChangeNotifier {
  List<Contact> allcontact = [];

  void addContact({required Contact contact}) {
    allcontact.add(contact);
    notifyListeners();
  }

  void removeContact({required Contact contact}) {
    allcontact.remove(contact);
    notifyListeners();
  }

  void editContact({required index, required Contact contact}) {
    allcontact[index] = contact;
    notifyListeners();
  }
}
