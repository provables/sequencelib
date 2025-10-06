/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015455 sequence
-/

namespace Sequence

@[OEIS := A015455, offset := 0, maxIndex := 18, derive := true]
def A015455 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + ((1 + (2 * 4)) * y)) x 1 1

end Sequence