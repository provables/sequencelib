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
# A057360 sequence 
-/


namespace Sequence

@[OEIS := A057360, offset := 0, derive := true, maxIndex := 78]
def A057360 (x : ℕ) : ℕ :=
  Int.toNat <| (((x / 2) + x) / 4)

end Sequence

