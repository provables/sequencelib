/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004281 sequence 
-/


namespace Sequence

@[OEIS := A004281, offset := 0, derive := true, maxIndex := 67]
def A004281 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ y) ((x - 1) - 2) 1 + x)

end Sequence

