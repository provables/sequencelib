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
# A230128 sequence 
-/


namespace Sequence

@[OEIS := A230128, offset := 1, derive := true, maxIndex := 100]
def A230128 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x / 3) - (x % 4) / 3)

end Sequence

