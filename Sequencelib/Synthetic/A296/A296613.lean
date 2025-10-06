/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A296613 sequence 
-/


namespace Sequence

@[OEIS := A296613, offset := 1, derive := true, maxIndex := 10]
def A296613 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ (x % y) + y) x 0)

end Sequence

