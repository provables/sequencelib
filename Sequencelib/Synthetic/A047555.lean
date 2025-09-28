/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047555 sequence 
-/


namespace Sequence

@[OEIS := A047555, offset := 1, derive := true, maxIndex := 100]
def A047555 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((3 * ((2 + x) / ((2 * 2) + 1))) + x)

end Sequence

