/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176738 sequence
-/

namespace Sequence

@[OEIS := A176738, offset := 0, maxIndex := 100, derive := true]
def A176738 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - (x % 2)) (λ (x y) ↦ ((x * 2) * 2) + y) x 1 1

end Sequence