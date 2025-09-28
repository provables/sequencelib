/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081598 sequence 
-/


namespace Sequence

@[OEIS := A081598, offset := 0, derive := true, maxIndex := 100]
def A081598 (x : ℕ) : ℕ :=
  Int.toNat <| (x - (3 * ((x / 2) / (1 + 4))))

end Sequence

