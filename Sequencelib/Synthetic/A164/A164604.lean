/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164604 sequence
-/

namespace Sequence

@[OEIS := A164604, offset := 0, maxIndex := 50, derive := true]
def A164604 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 + y)) + x) (λ (x y) ↦ y + x) (x + x) 1 2

end Sequence