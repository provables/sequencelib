/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094734 sequence
-/

namespace Sequence

@[OEIS := A094734, offset := 0, maxIndex := 100, derive := true]
def A094734 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((x - 1) + x) + x) x 1 - loop (λ (x _y) ↦ (x + 2) + x) (x - 1) 1

end Sequence