/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309683 sequence
-/

namespace Sequence

@[OEIS := A309683, offset := 0, maxIndex := 63, derive := true]
def A309683 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) (x - (x / 2)) 0 / 3

end Sequence