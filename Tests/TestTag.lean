/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Sequencelib.Meta.OEISTag

@[OEIS := A01, offset := 3]
def fooA (n : Nat) : Nat := n

/--
info: fooA.offset : Nat
-/
#guard_msgs in
#check fooA.offset

/--
info: 3
-/
#guard_msgs in
#eval fooA.offset

/--
info: fooA.OEIS : String
-/
#guard_msgs in
#check fooA.OEIS

/--
info: "A01"
-/
#guard_msgs in
#eval fooA.OEIS

@[OEIS := A02]
def barB (n : Nat) : Nat := n

/--
info: 0
-/
#guard_msgs in
#eval barB.offset

/--
error: Only functions of type ℕ → ℕ or ℕ → ℤ are supported
-/
#guard_msgs in
/--
goo
-/
@[OEIS := A0010]
def goo (n : Nat) : Rat := n

/--
error: Only functions of type ℕ → ℕ or ℕ → ℤ are supported
-/
#guard_msgs in
/--
spam
-/
@[OEIS := A005]
def spam : Nat → Rat → Rat  := fun m n => n + m

/--
error: Only functions of type ℕ → ℕ or ℕ → ℤ are supported
-/
#guard_msgs in
/--
baz2
-/
@[OEIS := A006]
theorem baz2 (n : Nat) : n ≤ n := Nat.le_refl n
