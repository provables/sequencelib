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
# A079283 sequence 
-/


namespace Sequence

@[OEIS := A079283, offset := 1, derive := true, maxIndex := 6]
def A079283 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + x) * ((((x / 2) * x) % 2) + x)) / 2)

end Sequence

