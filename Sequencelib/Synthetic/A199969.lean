/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199969 sequence 
-/


namespace Sequence

@[OEIS := A199969, offset := 1, derive := true, maxIndex := 76]
def A199969 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (2 - x) ≤ 0 then x else 0

end Sequence

