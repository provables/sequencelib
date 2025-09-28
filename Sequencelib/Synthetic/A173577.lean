/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173577 sequence 
-/


namespace Sequence

@[OEIS := A173577, offset := 1, derive := true, maxIndex := 9]
def A173577 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((2 + x) * (((x / 2) / 2) / 2)) + x))

end Sequence

