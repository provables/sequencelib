/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003223 sequence
-/

namespace Sequence

@[OEIS := A003223, offset := 3, maxIndex := 8, derive := true]
def A003223 (n : ℕ) : ℤ :=
  let x := n - 3
  loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ ((2 + x) * x) + x) x 1 2

end Sequence