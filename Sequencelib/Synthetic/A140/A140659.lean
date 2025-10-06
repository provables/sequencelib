/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140659 sequence
-/

namespace Sequence

@[OEIS := A140659, offset := 0, maxIndex := 99, derive := true]
def A140659 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - (x / 2)) (λ (_x y) ↦ y + y) x 1 1 - 1

end Sequence