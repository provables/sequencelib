/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015237 sequence 
-/


namespace Sequence

@[OEIS := A015237, offset := 0, derive := true, maxIndex := 33]
def A015237 (x : ℕ) : ℕ :=
  Int.toNat <| (((x - 1) + x) * (x * x))

end Sequence

