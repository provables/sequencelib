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
# A138083 sequence 
-/


namespace Sequence

@[OEIS := A138083, offset := 1, derive := true, maxIndex := 6]
def A138083 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x / 3) + x)

end Sequence

