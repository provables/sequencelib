/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051329 sequence
-/

namespace Sequence

@[OEIS := A051329, offset := 0, maxIndex := 100, derive := true]
def A051329 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 3) x 0 x * 2) + 1) * 2) - 2) / 2) - x) % 4

end Sequence