/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022357 sequence
-/

namespace Sequence

@[OEIS := A022357, offset := 0, maxIndex := 100, derive := true]
def A022357 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 2 - y) (λ (x y) ↦ y - x) x 0 1

end Sequence