/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134498 sequence
-/

namespace Sequence

@[OEIS := A134498, offset := 0, maxIndex := 15, derive := true]
def A134498 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) ((2 * ((x + x) + x)) + x) 0 1

end Sequence