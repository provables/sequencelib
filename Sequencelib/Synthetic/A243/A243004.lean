/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A243004 sequence
-/

namespace Sequence

@[OEIS := A243004, offset := 1, maxIndex := 19, derive := true]
def A243004 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y) ↦ y) (λ (x y) ↦ ((-x)) - x * y) x 1 1

end Sequence