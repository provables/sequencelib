/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059153 sequence
-/

namespace Sequence

@[OEIS := A059153, offset := 0, maxIndex := 100, derive := true]
def A059153 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x _y) ↦ x + x) x (loop (λ (x _y) ↦ 2 + (x + x)) x 2)

end Sequence