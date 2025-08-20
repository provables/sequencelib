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
# A180486 sequence 
-/


namespace Sequence

@[OEIS := A180486, offset := 1, derive := true, maxIndex := 60]
def A180486 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((2 * (2 + x)) + x))

end Sequence

