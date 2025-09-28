/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263881 sequence 
-/


namespace Sequence

@[OEIS := A263881, offset := 1, derive := true, maxIndex := 7]
def A263881 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ y - (x % 2)) (x + x) 1

end Sequence

