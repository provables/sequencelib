/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126587 sequence 
-/


namespace Sequence

@[OEIS := A126587, offset := 1, derive := true, maxIndex := 44]
def A126587 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 + (2 * (((2 * (2 + x)) + x) * x))))

end Sequence

