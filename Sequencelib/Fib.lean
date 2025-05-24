/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The Fibonacci sequence, 0, 1, 1, 2, 3, 5, 8, ...
-/
@[OEIS := A000045, offset := 0]
def fib := Nat.fib

theorem fib_zero : fib 0 = 0 := Nat.fib_zero

theorem fib_one : fib 1 = 1 := Nat.fib_one

theorem fib_two : fib 2 = 1 := Nat.fib_two

theorem fib_three : fib 3 = 2 := by decide

theorem fib_four : fib 4 = 3 := by decide

theorem fib_five : fib 5 = 5 := by decide

theorem fib_six : fib 6 = 8 := by decide

theorem fib_seven : fib 7 = 13 := by decide

theorem fib_eight : fib 8 = 21 := by decide

theorem fib_nine : fib 9 = 34 := by decide

theorem fib_ten : fib 10 = 55 := by decide
