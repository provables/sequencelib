/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A276918 sequence
-/

namespace Sequence

@[OEIS := A276918, offset := 0, maxIndex := 50, derive := true]
def A276918 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y 0 2 + x) + x) x 0 + 1

end Sequence