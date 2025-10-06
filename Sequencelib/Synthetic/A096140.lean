/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096140 sequence
-/

namespace Sequence

@[OEIS := A096140, offset := 0, maxIndex := 27, derive := true]
def A096140 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 1 0 - loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0

end Sequence