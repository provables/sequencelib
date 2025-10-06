/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096367 sequence
-/

namespace Sequence

@[OEIS := A096367, offset := 3, maxIndex := 31, derive := true]
def A096367 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((1 + (x + 4)) * loop (λ (x _y) ↦ x + x) x x) + 2

end Sequence