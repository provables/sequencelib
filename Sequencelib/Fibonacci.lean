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
def Fibonacci := Nat.fib

theorem Fibonacci_zero : Fibonacci 0 = 0 := Nat.fib_zero

theorem Fibonacci_one : Fibonacci 1 = 1 := Nat.fib_one

theorem Fibonacci_two : Fibonacci 2 = 1 := Nat.fib_two

theorem Fibonacci_three : Fibonacci 3 = 2 := by decide

theorem Fibonacci_four : Fibonacci 4 = 3 := by decide

theorem Fibonacci_five : Fibonacci 5 = 5 := by decide

theorem Fibonacci_six : Fibonacci 6 = 8 := by decide

theorem Fibonacci_seven : Fibonacci 7 = 13 := by decide

theorem Fibonacci_eight : Fibonacci 8 = 21 := by decide

theorem Fibonacci_nine : Fibonacci 9 = 34 := by decide

theorem Fibonacci_ten : Fibonacci 10 = 55 := by decide
