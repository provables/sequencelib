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
# A010695 sequence 
-/


namespace Sequence

@[OEIS := A010695, offset := 0, derive := true, maxIndex := 88]
def A010695 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (3 * (x % 2)))

end Sequence

