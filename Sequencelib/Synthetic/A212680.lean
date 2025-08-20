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
# A212680 sequence 
-/


namespace Sequence

@[OEIS := A212680, offset := 0, derive := true, maxIndex := 39]
def A212680 (x : ℕ) : ℕ :=
  Int.toNat <| ((((3 * ((x - 2) * x)) / 2) + 2) * x)

end Sequence

