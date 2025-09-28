/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089644 sequence 
-/


namespace Sequence

@[OEIS := A089644, offset := 1, derive := true, maxIndex := 100]
def A089644 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + (2 + 4)) * (1 + ((x / 2) + x)))

end Sequence

