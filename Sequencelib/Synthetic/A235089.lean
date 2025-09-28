/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A235089 sequence 
-/


namespace Sequence

@[OEIS := A235089, offset := 1, derive := true, maxIndex := 67]
def A235089 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 + ((2 * (((x % 2) + x) + x)) + x)))

end Sequence

