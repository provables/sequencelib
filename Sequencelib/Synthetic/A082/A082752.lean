/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082752 sequence
-/

namespace Sequence

@[OEIS := A082752, offset := 1, maxIndex := 25, derive := true]
def A082752 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ ((loop (λ (x y) ↦ (x % y) + y) x 0 + x) / 2) + 1) x 1

end Sequence