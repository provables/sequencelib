/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340318 sequence
-/

namespace Sequence

@[OEIS := A340318, offset := 0, maxIndex := 6, derive := true]
def A340318 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y 0 - x / 2) x 0

end Sequence