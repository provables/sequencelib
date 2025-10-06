/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063289 sequence
-/

namespace Sequence

@[OEIS := A063289, offset := 2, maxIndex := 55, derive := true]
def A063289 (n : ℕ) : ℤ :=
  let x := n - 2
  loop (λ (x _y) ↦ loop (λ (x _y) ↦ 2 + x) x x - 1) 2 x / 2

end Sequence