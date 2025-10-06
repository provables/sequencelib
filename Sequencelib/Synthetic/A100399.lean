/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100399 sequence
-/

namespace Sequence

@[OEIS := A100399, offset := 0, maxIndex := 49, derive := true]
def A100399 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1)

end Sequence