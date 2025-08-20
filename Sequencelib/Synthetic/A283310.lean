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
# A283310 sequence 
-/


namespace Sequence

@[OEIS := A283310, offset := 1, derive := true, maxIndex := 11]
def A283310 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + ((1 + x) % (2 * 4))) % 3)

end Sequence

