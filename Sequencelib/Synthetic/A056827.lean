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
# A056827 sequence 
-/


namespace Sequence

@[OEIS := A056827, offset := 0, derive := true, maxIndex := 56]
def A056827 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) / (2 + 4))

end Sequence

