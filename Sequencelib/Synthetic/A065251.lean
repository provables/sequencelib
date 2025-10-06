/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065251 sequence
-/

namespace Sequence

@[OEIS := A065251, offset := 1, maxIndex := 100, derive := true]
def A065251 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x y) ↦ 2 + (x % y)) (1 + x) 0 % 3) - 1

end Sequence