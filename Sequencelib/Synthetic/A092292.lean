/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092292 sequence
-/

namespace Sequence

@[OEIS := A092292, offset := 0, maxIndex := 50, derive := true]
def A092292 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 3) x 1 x - 1) % 3) - 1) + x) + x) + 1) + x

end Sequence