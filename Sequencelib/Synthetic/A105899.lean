/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105899 sequence 
-/


namespace Sequence

@[OEIS := A105899, offset := 0, derive := true, maxIndex := 100]
def A105899 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((x / 2) % 3))

end Sequence

