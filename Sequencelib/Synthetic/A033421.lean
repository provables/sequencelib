/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033421 sequence 
-/


namespace Sequence

@[OEIS := A033421, offset := 1, derive := true, maxIndex := 62]
def A033421 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ 2 + ((x * x) * x)) 2 2 - 2) / (1 + x))

end Sequence

