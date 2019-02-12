class Account {
  double credit;

  Account(this.credit);

  withdraw(double value) {
    if (credit >= value) {
      credit = credit - value;
    }
  }

  deposit(double value) {
    credit = credit + value;
  }
}
