/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038364 sequence 
-/


namespace Sequence

@[OEIS := A038364, offset := 1, derive := true, maxIndex := 10]
def A038364 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (if x ≤ 0 then 0 else loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 (1 + x) + x)

end Sequence

