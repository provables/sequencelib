/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074323 sequence
-/

namespace Sequence

@[OEIS := A074323, offset := 0, maxIndex := 41, derive := true]
def A074323 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 3 1 / 2

end Sequence