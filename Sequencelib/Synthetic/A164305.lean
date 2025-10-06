/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164305 sequence
-/

namespace Sequence

@[OEIS := A164305, offset := 0, maxIndex := 100, derive := true]
def A164305 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + y)) + x) (λ (x y) ↦ y - x) x 3 1

end Sequence