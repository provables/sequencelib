/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020531 sequence
-/

namespace Sequence

@[OEIS := A020531, offset := 0, maxIndex := 100, derive := true]
def A020531 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (3 + x) * x) 1 (loop (λ (x _y) ↦ x + x) (x + x) 1) + 1

end Sequence