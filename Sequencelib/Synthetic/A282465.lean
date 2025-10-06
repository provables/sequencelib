/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282465 sequence
-/

namespace Sequence

@[OEIS := A282465, offset := 0, maxIndex := 100, derive := true]
def A282465 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x y) ↦ (x + y) * x) 2 2 - y) (λ (x y) ↦ y - x) x 1 2

end Sequence