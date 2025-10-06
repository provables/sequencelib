/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028726 sequence
-/

namespace Sequence

@[OEIS := A028726, offset := 1, maxIndex := 6, derive := true]
def A028726 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (y - x)) (x) (0) (1)) x + 2

end Sequence