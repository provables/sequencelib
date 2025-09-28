/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121702 sequence 
-/


namespace Sequence

@[OEIS := A121702, offset := 1, derive := true, maxIndex := 6]
def A121702 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (x + ((x * (1 + x)) * (2 + x))) 1

end Sequence

