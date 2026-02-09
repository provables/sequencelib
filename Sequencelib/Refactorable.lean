/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# The Ruler function

The ruler function: exponent of the highest power of 2 dividing 2n.
Equivalently, the 2-adic valuation of 2n.
-/

namespace Sequence

open Nat

def isRefactorable (n : ℕ) : Prop := n.divisors.card ∣ n

instance (n : ℕ) : Decidable (isRefactorable n) := by
  unfold isRefactorable
  apply decidable_dvd

instance : DecidablePred isRefactorable := by
  unfold isRefactorable
  infer_instance

example : isRefactorable 1 := by decide

example : isRefactorable 2 := by decide

example : isRefactorable 8 := by decide

/-- Ruler function -/
@[OEIS := A033950, offset := 1]
noncomputable def Refactorable (n : ℕ) : ℕ := nth isRefactorable n

example : Refactorable 1 = 1 := by
  have : isRefactorable 1 := by decide
  exact nth_count this

example : Refactorable 2 = 2 := by
  have : isRefactorable 2 := by decide
  exact nth_count this

example : Refactorable 3 = 8 := by
  have : isRefactorable 8 := by decide
  exact nth_count this

example : Refactorable 4 = 9 := by
  unfold Refactorable
  refine nth_count (p := isRefactorable) (n := 9) ?_
  decide
