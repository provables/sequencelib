/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A284429 sequence 
-/


namespace Sequence

@[OEIS := A284429, offset := 1, derive := true, maxIndex := 100]
def A284429 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ if x ≤ 0 then 2 else 0) (x % 3) (1 + x))

end Sequence

