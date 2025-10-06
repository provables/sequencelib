/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246706 sequence
-/

namespace Sequence

@[OEIS := A246706, offset := 1, maxIndex := 62, derive := true]
def A246706 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (loop (λ (x y) ↦ (y / (x * x)) + x) x 1 + x)) + x

end Sequence