/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090555 sequence
-/

namespace Sequence

@[OEIS := A090555, offset := 1, maxIndex := 6, derive := true]
def A090555 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ y + y) x ((4 + 1) * 2) 1

end Sequence