/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052598 sequence
-/

namespace Sequence

@[OEIS := A052598, offset := 0, maxIndex := 17, derive := true]
def A052598 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x 1 * loop2 (λ (x y) ↦ y - x) (λ (_x y) ↦ y + y) x 1 1

end Sequence