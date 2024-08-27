import Result "mo:base/Result";

import Float "mo:base/Float";
import Text "mo:base/Text";
import Error "mo:base/Error";

actor Calculator {
  public func calculate(operation: Text, num1: ?Float, num2: ?Float) : async Result.Result<Float, Text> {
    switch (num1, num2) {
      case (?n1, ?n2) {
        switch (operation) {
          case ("+") { #ok(n1 + n2) };
          case ("-") { #ok(n1 - n2) };
          case ("*") { #ok(n1 * n2) };
          case ("/") {
            if (n2 == 0) {
              #err("Division by zero")
            } else {
              #ok(n1 / n2)
            }
          };
          case (_) { #err("Invalid operation") };
        }
      };
      case (_, _) { #err("Invalid input") };
    }
  };
}
