/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122586 sequence 
-/


namespace Sequence

@[OEIS := A122586, offset := 1, derive := true, maxIndex := 100]
def A122586 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 - loop (λ (x _y : ℤ) ↦ (x - if x ≤ 0 then 0 else 2) / 3) x x)

end Sequence

