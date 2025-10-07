/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090542 sequence
-/

namespace Sequence

@[OEIS := A090542, offset := 1, maxIndex := 9, derive := true]
def A090542 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ (x) ↦ ((x + (1 + 4)) / (((x / 3) / 2) + 1)) % 2) x

end Sequence