/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033391 sequence 
-/


namespace Sequence

@[OEIS := A033391, offset := 1, derive := true, maxIndex := 92]
def A033391 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x _y : ℤ) ↦ (2 * (x * x)) - 2) 2 2) / (1 + x))

end Sequence

