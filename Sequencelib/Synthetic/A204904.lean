/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204904 sequence 
-/


namespace Sequence

@[OEIS := A204904, offset := 1, derive := true, maxIndex := 65]
def A204904 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + x) * (2 - (x % 2)))

end Sequence

