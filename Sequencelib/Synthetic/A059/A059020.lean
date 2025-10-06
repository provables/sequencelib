/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059020 sequence
-/

namespace Sequence

@[OEIS := A059020, offset := 0, maxIndex := 50, derive := true]
def A059020 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) y 2 1 - 2) + x) x 0

end Sequence