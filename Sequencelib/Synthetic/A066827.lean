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
# A066827 sequence 
-/


namespace Sequence

@[OEIS := A066827, offset := 1, derive := true, maxIndex := 100]
def A066827 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (x % 4) ≤ 0 then 1 + loop (λ (x _y : ℤ) ↦ x + x) x 2 else 1

end Sequence

