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
# A065679 sequence 
-/


namespace Sequence

@[OEIS := A065679, offset := 0, derive := true, maxIndex := 100]
def A065679 (x : ℕ) : ℕ :=
  Int.toNat <| (if (x % 2) ≤ 0 then x else 1 * x)

end Sequence

