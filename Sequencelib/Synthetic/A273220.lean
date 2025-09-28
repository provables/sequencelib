/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273220 sequence 
-/


namespace Sequence

@[OEIS := A273220, offset := 2, derive := true, maxIndex := 100]
def A273220 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 + (2 * ((1 + (x + x)) * ((2 + x) * 2))))

end Sequence

