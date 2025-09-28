/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111731 sequence 
-/


namespace Sequence

@[OEIS := A111731, offset := 2, derive := true, maxIndex := 9]
def A111731 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((1 - x) % 3) * (x % 2)) + 2) + 2)

end Sequence

