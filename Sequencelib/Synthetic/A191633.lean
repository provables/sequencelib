/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191633 sequence 
-/


namespace Sequence

@[OEIS := A191633, offset := 1, derive := true, maxIndex := 37]
def A191633 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x _y : ℤ) ↦ x + x) x 2) / (1 + (2 + (x + x))))

end Sequence

