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
# A010884 sequence 
-/


namespace Sequence

@[OEIS := A010884, offset := 0, derive := true, maxIndex := 81]
def A010884 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x % (1 + 4)))

end Sequence

