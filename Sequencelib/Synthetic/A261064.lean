/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261064 sequence 
-/


namespace Sequence

@[OEIS := A261064, offset := 1, derive := true, maxIndex := 100]
def A261064 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + x) * loop (λ (x _y : ℤ) ↦ 1 + ((x + x) + x)) x 1) / 2)

end Sequence

