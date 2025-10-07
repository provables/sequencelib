/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135043 sequence
-/

namespace Sequence

@[OEIS := A135043, offset := 1, maxIndex := 47, derive := true]
def A135043 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ (x) ↦ ((1 + x) / 3) % 3) x

end Sequence