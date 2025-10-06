/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A299017 sequence
-/

namespace Sequence

@[OEIS := A299017, offset := 1, maxIndex := 15, derive := true]
def A299017 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x _y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ y - x) x y) x 1 - x) 2 x + x) + x) + x) * x) + 1) / 2) + 1) - x

end Sequence