/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A031193 sequence 
-/


namespace Sequence

@[OEIS := A031193, offset := 1, derive := true, maxIndex := 58]
def A031193 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (3 * (1 + x))

end Sequence

