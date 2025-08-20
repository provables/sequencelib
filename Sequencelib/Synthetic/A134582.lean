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
# A134582 sequence 
-/


namespace Sequence

@[OEIS := A134582, offset := 1, derive := true, maxIndex := 46]
def A134582 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (2 * ((2 + x) * x)))

end Sequence

