enum ReadConfirmation { unread, alreadyRead }

extension ReadConfirmationExtension on ReadConfirmation {
  int get num {
    switch (this) {
      case ReadConfirmation.unread:
        return 1;
      case ReadConfirmation.alreadyRead:
        return 0;
    }
  }
}
