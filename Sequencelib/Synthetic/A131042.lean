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
# A131042 sequence 
-/


namespace Sequence

@[OEIS := A131042, offset := 1, derive := true, maxIndex := 100]
def A131042 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((((x % 3) - x % 2) / 2) + x))

end Sequence

