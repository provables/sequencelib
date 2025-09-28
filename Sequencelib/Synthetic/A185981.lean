/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185981 sequence 
-/


namespace Sequence

@[OEIS := A185981, offset := 1, derive := true, maxIndex := 4]
def A185981 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x * x) 2 (x + x) * x) x 2 / 2)

end Sequence

