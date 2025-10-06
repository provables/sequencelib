/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014293 sequence
-/

namespace Sequence

@[OEIS := A014293, offset := 0, maxIndex := 97, derive := true]
def A014293 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x x x - x)

end Sequence