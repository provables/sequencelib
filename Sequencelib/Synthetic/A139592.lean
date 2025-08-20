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
# A139592 sequence 
-/


namespace Sequence

@[OEIS := A139592, offset := 0, derive := true, maxIndex := 44]
def A139592 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * ((x * x) + x / 2))

end Sequence

