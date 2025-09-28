/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062107 sequence 
-/


namespace Sequence

@[OEIS := A062107, offset := 1, derive := true, maxIndex := 27]
def A062107 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (((((2 - x) / 2) % 2) + x) + x) + x) x 0

end Sequence

