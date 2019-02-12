import 'package:test/test.dart';

import '../bin/General/Account.dart';

main() {
  group("account", () {
    test("withdraw should decrease credit", () {
      final account = Account(500);
      account.withdraw(400);
      expect(account.credit, 100);
      account.withdraw(50);
      expect(account.credit, 50);
      account.withdraw(900);
      expect(account.credit, 50);
    });

    test("deposit should increse credit", () {
      final account = Account(500);
      account.deposit(100);
      expect(account.credit, 600);
//      account.deposit(400);
//      expect(actual, matcher)
    });
  });
}
