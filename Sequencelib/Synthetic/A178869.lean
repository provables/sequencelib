/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178869 sequence
-/

namespace Sequence

@[OEIS := A178869, offset := 0, maxIndex := 20, derive := true]
def A178869 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 * (x + x))) + y) (λ (x y) ↦ (y - x) - x) x 0 1

end Sequence