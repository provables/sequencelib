/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081839 sequence
-/

namespace Sequence

@[OEIS := A081839, offset := 1, maxIndex := 57, derive := true]
def A081839 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((loop (λ (x y) ↦ (x + y) / (1 + y)) 2 x + x) + x) + 2) + x) / 2) + x) + x) / 2) + x) + x) + x

end Sequence