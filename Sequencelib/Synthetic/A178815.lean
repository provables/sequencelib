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
# A178815 sequence 
-/


namespace Sequence

@[OEIS := A178815, offset := 1, derive := true, maxIndex := 100]
def A178815 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + if x ≤ 0 then 2 else 1)

end Sequence

