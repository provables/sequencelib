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
# A173562 sequence 
-/


namespace Sequence

@[OEIS := A173562, offset := 0, derive := true, maxIndex := 51]
def A173562 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) + (x / 2) / 2)

end Sequence

