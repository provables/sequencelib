/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037915 sequence 
-/


namespace Sequence

@[OEIS := A037915, offset := 0, derive := true, maxIndex := 73]
def A037915 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (((x / 2) + x) / 2))

end Sequence

