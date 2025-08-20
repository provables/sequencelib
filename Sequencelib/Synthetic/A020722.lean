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
# A020722 sequence 
-/


namespace Sequence

@[OEIS := A020722, offset := 0, derive := true, maxIndex := 73]
def A020722 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * 4) + x)

end Sequence

