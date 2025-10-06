/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212709 sequence
-/

namespace Sequence

@[OEIS := A212709, offset := 1, maxIndex := 7, derive := true]
def A212709 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (x - 2) 1 + x) * x) / 2) / 2) + 1) * x) / 2) + 1) + x

end Sequence