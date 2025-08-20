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
# A010684 sequence 
-/


namespace Sequence

@[OEIS := A010684, offset := 0, derive := true, maxIndex := 81]
def A010684 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 * (x % 2)))

end Sequence

