/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128422 sequence 
-/


namespace Sequence

@[OEIS := A128422, offset := 1, derive := true, maxIndex := 57]
def A128422 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x * x) - x) / 3)

end Sequence

