/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094284 sequence 
-/


namespace Sequence

@[OEIS := A094284, offset := 1, derive := true, maxIndex := 100]
def A094284 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + (3 / (1 + x)))

end Sequence

