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
# A158416 sequence 
-/


namespace Sequence

@[OEIS := A158416, offset := 0, derive := true, maxIndex := 10]
def A158416 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (if (x % 2) ≤ 0 then x else 0 / 2))

end Sequence

