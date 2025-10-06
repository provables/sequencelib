/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053428 sequence
-/

namespace Sequence

@[OEIS := A053428, offset := 0, maxIndex := 21, derive := true]
def A053428 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 * y) + x) (λ (x _y) ↦ x) x 1 0

end Sequence