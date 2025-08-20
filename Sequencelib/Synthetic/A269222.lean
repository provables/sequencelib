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
# A269222 sequence 
-/


namespace Sequence

@[OEIS := A269222, offset := 1, derive := true, maxIndex := 88]
def A269222 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (if (x % 4) ≤ 0 then 1 else (2 * 4) + x % 2)

end Sequence

