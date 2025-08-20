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
# A186349 sequence 
-/


namespace Sequence

@[OEIS := A186349, offset := 1, derive := true, maxIndex := 86]
def A186349 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((((2 + x) * x) / (2 * 4)) + x))

end Sequence

