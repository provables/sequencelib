/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A107843 sequence 
-/


namespace Sequence

@[OEIS := A107843, offset := 1, derive := true, maxIndex := 51]
def A107843 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ 1 + ((2 + x) * x)) 2 2 - x) * 2) + 1)

end Sequence

