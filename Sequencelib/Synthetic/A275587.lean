/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275587 sequence
-/

namespace Sequence

@[OEIS := A275587, offset := 1, maxIndex := 5, derive := true]
def A275587 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) 1 (x - 1) + y) x 0 + 1) - (1 + x)

end Sequence