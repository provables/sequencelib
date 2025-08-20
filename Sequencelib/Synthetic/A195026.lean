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
# A195026 sequence 
-/


namespace Sequence

@[OEIS := A195026, offset := 0, derive := true, maxIndex := 100]
def A195026 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (2 + 4)) * ((2 * (x * x)) + x))

end Sequence

