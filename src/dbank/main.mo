import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor DBank {
  stable var currentValue: Nat = 300;
  // currentValue := 100;

  let id = 2341249791234891234;

  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat) {
    let tempValue: Int = currentValue - amount;
    if(tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount is too large to withdraw");
    }
    
  };

  public query func checkBalance(): async Nat {
    return currentValue;
  };
}