/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143098 sequence
-/

namespace Sequence

@[OEIS := A143098, offset := 1, maxIndex := 79, derive := true]
def A143098 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ if x ≤ 0 then 1 else 0) x 2 1) 2 x

end Sequence