/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174841 sequence
-/

namespace Sequence

@[OEIS := A174841, offset := 1, maxIndex := 74, derive := true]
def A174841 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ x * ((-((2 + y) * y)))) (λ (_x y) ↦ y) x 1 x

end Sequence