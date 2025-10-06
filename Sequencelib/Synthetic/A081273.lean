/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081273 sequence
-/

namespace Sequence

@[OEIS := A081273, offset := 1, maxIndex := 18, derive := true]
def A081273 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ 1 + (x + y)) ((x + x) + x) 1

end Sequence