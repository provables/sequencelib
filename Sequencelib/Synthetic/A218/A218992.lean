/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218992 sequence
-/

namespace Sequence

@[OEIS := A218992, offset := 0, maxIndex := 100, derive := true]
def A218992 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((2 * ((x + x) + x)) + y)) (λ (x _y) ↦ x) (1 + x) 1 0

end Sequence