/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185015 sequence 
-/


namespace Sequence

@[OEIS := A185015, offset := 0, derive := true, maxIndex := 86]
def A185015 (x : ℕ) : ℕ :=
  Int.toNat <| (1 / loop (λ (_x y : ℤ) ↦ y) ((x - 2) - 2) 2)

end Sequence

