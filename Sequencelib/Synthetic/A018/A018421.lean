/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018421 sequence
-/

namespace Sequence

@[OEIS := A018421, offset := 1, maxIndex := 8, derive := true]
def A018421 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((x + x) / (x % 4)) + x) x 1

end Sequence