/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228398 sequence 
-/


namespace Sequence

@[OEIS := A228398, offset := 1, derive := true, maxIndex := 43]
def A228398 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else ((x * loop (λ (_x y : ℤ) ↦ y) (x - 1) 1) + 1) * x

end Sequence

