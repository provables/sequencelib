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
# A146510 sequence 
-/


namespace Sequence

@[OEIS := A146510, offset := 1, derive := true, maxIndex := 55]
def A146510 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (3 * ((3 * (x / 2)) + x)))

end Sequence

