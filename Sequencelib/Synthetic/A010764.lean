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
# A010764 sequence 
-/


namespace Sequence

@[OEIS := A010764, offset := 3, derive := true, maxIndex := 100]
def A010764 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((1 + (x - (x / 2))) % (1 + (x / 3)))

end Sequence

