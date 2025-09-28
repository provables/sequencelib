/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161680 sequence 
-/


namespace Sequence

@[OEIS := A161680, offset := 0, derive := true, maxIndex := 54]
def A161680 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) / 2)

end Sequence

