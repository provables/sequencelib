/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185691 sequence
-/

namespace Sequence

@[OEIS := A185691, offset := 0, maxIndex := 100, derive := true]
def A185691 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop2 (λ (x y) ↦ loop (λ (x y) ↦ x + y) 4 x + y) (λ (x _y) ↦ x) x 0 1 + 2) + 2) + 2) + 2) + 2

end Sequence