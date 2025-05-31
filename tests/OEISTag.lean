import Sequencelib.Meta.OEISTag

@[OEIS := A01, offset := 3]
def foo (n : Nat) : Nat := n

/--
info: foo.offset : Nat
-/
#guard_msgs in
#check foo.offset

/--
info: 3
-/
#guard_msgs in
#eval foo.offset

/--
info: foo.OEIS : String
-/
#guard_msgs in
#check foo.OEIS

/--
info: "A01"
-/
#guard_msgs in
#eval foo.OEIS

@[OEIS := A02]
def bar (n : Nat) : Nat := n

/--
info: 0
-/
#guard_msgs in
#eval bar.offset
