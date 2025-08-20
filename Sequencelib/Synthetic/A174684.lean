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
# A174684 sequence 
-/


namespace Sequence

@[OEIS := A174684, offset := 0, derive := true, maxIndex := 4]
def A174684 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (((x * x) * x) + ((1 - (x % 2)) + x)))

end Sequence

