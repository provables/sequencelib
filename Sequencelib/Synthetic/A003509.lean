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
# A003509 sequence 
-/


namespace Sequence

@[OEIS := A003509, offset := 2, derive := true, maxIndex := 6]
def A003509 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 + ((x * x) + if x ≤ 0 then 1 else x))

end Sequence

