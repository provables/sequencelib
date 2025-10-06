/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014335 sequence
-/

namespace Sequence

@[OEIS := A014335, offset := 0, maxIndex := 100, derive := true]
def A014335 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y - 1) (λ (x y) ↦ ((x + x) + y) * 2) x 0 1

end Sequence