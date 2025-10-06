/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117561 sequence
-/

namespace Sequence

@[OEIS := A117561, offset := 2, maxIndex := 42, derive := true]
def A117561 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop (λ (x _y) ↦ 1 + ((2 + (2 + x)) * x)) 2 x / (1 + x)) + x) / 2

end Sequence