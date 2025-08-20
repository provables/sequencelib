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
# A191759 sequence 
-/


namespace Sequence

@[OEIS := A191759, offset := 1, derive := true, maxIndex := 87]
def A191759 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 - ((x * x) + x)) % ((4 * 2) + 2))

end Sequence

