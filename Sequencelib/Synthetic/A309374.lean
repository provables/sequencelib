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
# A309374 sequence 
-/


namespace Sequence

@[OEIS := A309374, offset := 1, derive := true, maxIndex := 10]
def A309374 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (if (x - 2) ≤ 0 then 1 else 2 + x))

end Sequence

