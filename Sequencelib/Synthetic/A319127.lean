/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319127 sequence 
-/


namespace Sequence

@[OEIS := A319127, offset := 1, derive := true, maxIndex := 51]
def A319127 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (3 * ((x * x) / 2))

end Sequence

