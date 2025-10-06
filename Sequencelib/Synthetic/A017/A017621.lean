/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017621 sequence
-/

namespace Sequence

@[OEIS := A017621, offset := 0, maxIndex := 15, derive := true]
def A017621 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * 2) * y) (λ (x _y) ↦ x) 2 (2 * (2 + ((x + x) + x))) 2

end Sequence