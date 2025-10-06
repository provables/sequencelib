/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119622 sequence
-/

namespace Sequence

@[OEIS := A119622, offset := 1, maxIndex := 11, derive := true]
def A119622 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (comprN (λ (x : ℤ) ↦ ((loop (λ (x y : ℤ) ↦ (x * y)) (x) (1) % (1 + x)) - 1)) (1 + x) + 1) * 2

end Sequence