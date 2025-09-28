/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A224334 sequence 
-/


namespace Sequence

@[OEIS := A224334, offset := 1, derive := true, maxIndex := 100]
def A224334 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 * ((2 + x) * (2 + x))) - 1) * 3)

end Sequence

