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
# A016945 sequence 
-/


namespace Sequence

@[OEIS := A016945, offset := 0, derive := true, maxIndex := 55]
def A016945 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * (1 + (x + x)))

end Sequence

