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
# A047464 sequence 
-/


namespace Sequence

@[OEIS := A047464, offset := 1, derive := true, maxIndex := 60]
def A047464 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * ((x / 3) + x))

end Sequence

