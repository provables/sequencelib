/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A035017 sequence 
-/


namespace Sequence

@[OEIS := A035017, offset := 1, derive := true, maxIndex := 100]
def A035017 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 + ((x + x) + x)) 2 y * x) x 1

end Sequence

