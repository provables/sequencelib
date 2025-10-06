/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056452 sequence
-/

namespace Sequence

@[OEIS := A056452, offset := 0, maxIndex := 100, derive := true]
def A056452 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (y + y) + y) (λ (x _y) ↦ x + x) x 1 2

end Sequence