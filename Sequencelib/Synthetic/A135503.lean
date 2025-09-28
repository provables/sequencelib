/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135503 sequence 
-/


namespace Sequence

@[OEIS := A135503, offset := 0, derive := true, maxIndex := 100]
def A135503 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x * x) * x) - x) / 2)

end Sequence

