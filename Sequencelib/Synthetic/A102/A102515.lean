/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102515 sequence
-/

namespace Sequence

@[OEIS := A102515, offset := 0, maxIndex := 82, derive := true]
def A102515 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / ((x * x) / 2)) + x) x 2

end Sequence