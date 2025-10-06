/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071954 sequence
-/

namespace Sequence

@[OEIS := A071954, offset := 0, maxIndex := 100, derive := true]
def A071954 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (2 * (y + y)) - x) x 0 2 + 2

end Sequence