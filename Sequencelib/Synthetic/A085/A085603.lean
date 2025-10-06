/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085603 sequence
-/

namespace Sequence

@[OEIS := A085603, offset := 0, maxIndex := 10, derive := true]
def A085603 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (x y) ↦ (x * y) * y) (λ (_x y) ↦ y) x 1 (x + x)

end Sequence