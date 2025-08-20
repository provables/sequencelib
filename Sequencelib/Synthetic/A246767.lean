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
# A246767 sequence 
-/


namespace Sequence

@[OEIS := A246767, offset := 1, derive := true, maxIndex := 39]
def A246767 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((x * x) * x) - 2) * x)

end Sequence

