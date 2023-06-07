import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 2341249791234891234;

  Debug.print(debug_show(currentValue));
  Debug.print(debug_show(id));
}