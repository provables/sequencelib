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
# A067707 sequence 
-/


namespace Sequence

@[OEIS := A067707, offset := 1, derive := true, maxIndex := 100]
def A067707 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (3 * ((1 + x) * ((1 + 4) + x)))

end Sequence

