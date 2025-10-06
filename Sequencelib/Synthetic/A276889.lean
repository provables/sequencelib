/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A276889 sequence
-/

namespace Sequence

@[OEIS := A276889, offset := 1, maxIndex := 60, derive := true]
def A276889 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) x 0 + x) / 3) * 2) + 1) + x

end Sequence