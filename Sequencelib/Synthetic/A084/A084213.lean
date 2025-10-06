/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084213 sequence
-/

namespace Sequence

@[OEIS := A084213, offset := 0, maxIndex := 23, derive := true]
def A084213 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (x + x)) - x % 2) + y) (λ (_x y) ↦ y + y) x 1 1

end Sequence