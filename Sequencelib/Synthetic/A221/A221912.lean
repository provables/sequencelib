/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A221912 sequence
-/

namespace Sequence

@[OEIS := A221912, offset := 0, maxIndex := 66, derive := true]
def A221912 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x / (2 + y)) 2 y + x) x 0

end Sequence