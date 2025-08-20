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
# A166781 sequence 
-/


namespace Sequence

@[OEIS := A166781, offset := 1, derive := true, maxIndex := 41]
def A166781 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 + ((2 + x) * x)) * (2 + x)) + x) + x)

end Sequence

