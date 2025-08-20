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
# A153814 sequence 
-/


namespace Sequence

@[OEIS := A153814, offset := 1, derive := true, maxIndex := 100]
def A153814 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ 2 + ((x * x) * x)) 2 2 - 1) * (1 + x))

end Sequence

