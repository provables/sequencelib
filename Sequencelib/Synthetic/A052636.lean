/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052636 sequence
-/

namespace Sequence

@[OEIS := A052636, offset := 0, maxIndex := 18, derive := true]
def A052636 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (1 + loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 0)

end Sequence