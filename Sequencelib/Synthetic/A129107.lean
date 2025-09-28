/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129107 sequence 
-/


namespace Sequence

@[OEIS := A129107, offset := 8, derive := true, maxIndex := 8]
def A129107 (n : ℕ) : ℕ :=
  let x := n - 8
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x + y) / ((2 - (x % 2)) + 2)) x 2 + 2)

end Sequence

