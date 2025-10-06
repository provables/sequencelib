/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056572 sequence
-/

namespace Sequence

@[OEIS := A056572, offset := 0, maxIndex := 19, derive := true]
def A056572 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 2 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1) 1

end Sequence