/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026209 sequence
-/

namespace Sequence

@[OEIS := A026209, offset := 1, maxIndex := 61, derive := true]
def A026209 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ (2 + (2 - (x % 2))) + y) (λ (x _y) ↦ x) x (1 - x) 0

end Sequence