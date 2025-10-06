/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138748 sequence
-/

namespace Sequence

@[OEIS := A138748, offset := 0, maxIndex := 20, derive := true]
def A138748 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x x x) + ((x * (2 + x)) + x)

end Sequence