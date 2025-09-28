/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253358 sequence 
-/


namespace Sequence

@[OEIS := A253358, offset := 1, derive := true, maxIndex := 6]
def A253358 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ x + x) ((2 + 4) % (1 + x)) 2)

end Sequence

