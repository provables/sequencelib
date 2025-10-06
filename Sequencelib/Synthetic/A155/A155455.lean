/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155455 sequence
-/

namespace Sequence

@[OEIS := A155455, offset := 0, maxIndex := 22, derive := true]
def A155455 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * ((x + x) + x)) + x) + y) (λ (x y) ↦ (x - y) * 2) x 0 1

end Sequence