/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089775 sequence
-/

namespace Sequence

@[OEIS := A089775, offset := 0, maxIndex := 24, derive := true]
def A089775 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (loop (λ (x y) ↦ (2 + y) * x) 2 x) 2 1

end Sequence