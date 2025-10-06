/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132417 sequence
-/

namespace Sequence

@[OEIS := A132417, offset := 0, maxIndex := 55, derive := true]
def A132417 (x : ℕ) : ℕ :=
  Int.toNat <| (((((1 - ((1 + x) % loop (λ (x _y) ↦ x * x) 2 2)) + x) + x) * 2) + 1) * 2

end Sequence