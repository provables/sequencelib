import Mathlib
import Sequencelib.Meta.OEISTag

@[OEIS := A001]
def foo (n : ℕ) : ℕ := n

@[OEIS := A002]
def bar : ℕ → ℕ := fun n => n

@[OEIS := A004]
def baz : ℕ → ℤ := fun n => n

/--
error: Only functions of type ℕ → ℕ or ℕ → ℤ are supported
-/
#guard_msgs in
@[OEIS := A0010]
def goo (n : ℕ) : ℚ := n

/--
error: Only functions of type ℕ → ℕ or ℕ → ℤ are supported
-/
#guard_msgs in
@[OEIS := A005]
def spam : ℕ → ℝ → ℝ  := fun n m => n

/--
error: Only functions of type ℕ → ℕ or ℕ → ℤ are supported
-/
#guard_msgs in
@[OEIS := A006]
def baz2 (n : ℕ) : n = n := by rfl
