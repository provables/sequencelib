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
# A133310 sequence 
-/


namespace Sequence

@[OEIS := A133310, offset := 0, derive := true, maxIndex := 100]
def A133310 (x : ℕ) : ℕ :=
  Int.toNat <| (((x + x) / 3) + (x - 2) % 3)

end Sequence

