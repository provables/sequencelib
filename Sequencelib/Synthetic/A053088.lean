/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053088 sequence
-/

namespace Sequence

@[OEIS := A053088, offset := 0, maxIndex := 100, derive := true]
def A053088 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - (x % 2)) (λ (x y) ↦ (x + x) + y) x 1 1

end Sequence