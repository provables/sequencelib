/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092830 sequence
-/

namespace Sequence

@[OEIS := A092830, offset := 1, maxIndex := 3, derive := true]
def A092830 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((((loop (λ (x _y) ↦ ((2 * ((x / 2) * 2)) + x) + 1) x 1 + 1) + 2) + 1) * 2) - 1) x 1 + 2

end Sequence