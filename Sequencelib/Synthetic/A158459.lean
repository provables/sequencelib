/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158459 sequence 
-/


namespace Sequence

@[OEIS := A158459, offset := 0, derive := true, maxIndex := 87]
def A158459 (x : ℕ) : ℕ :=
  Int.toNat <| ((-x) % 4)

end Sequence

