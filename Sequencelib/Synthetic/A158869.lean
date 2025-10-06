/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158869 sequence
-/

namespace Sequence

@[OEIS := A158869, offset := 0, maxIndex := 19, derive := true]
def A158869 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + y)) + x) (λ (x y) ↦ x + y) x 1 0

end Sequence