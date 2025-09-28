/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171623 sequence 
-/


namespace Sequence

@[OEIS := A171623, offset := 1, derive := true, maxIndex := 50]
def A171623 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((x * x) / (1 + (2 + x))) + 2) - x) + 2)

end Sequence

