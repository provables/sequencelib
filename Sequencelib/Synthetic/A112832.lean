/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112832 sequence
-/

namespace Sequence

@[OEIS := A112832, offset := 0, maxIndex := 24, derive := true]
def A112832 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) x 2 1 / 2) / 3) + 1

end Sequence