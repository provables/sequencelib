/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A303502 sequence 
-/


namespace Sequence

@[OEIS := A303502, offset := 1, derive := true, maxIndex := 75]
def A303502 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x)

end Sequence

