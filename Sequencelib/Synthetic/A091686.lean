/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091686 sequence
-/

namespace Sequence

@[OEIS := A091686, offset := 0, maxIndex := 20, derive := true]
def A091686 (x : ℕ) : ℤ :=
  ((loop2 (λ (x y) ↦ (2 * ((2 * (x + x)) + x)) - y) (λ (_x y) ↦ y) x 1 x - 1) + 1) - if x ≤ 0 then x else 1

end Sequence