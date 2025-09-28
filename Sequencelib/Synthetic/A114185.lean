/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114185 sequence 
-/


namespace Sequence

@[OEIS := A114185, offset := 2, derive := true, maxIndex := 50]
def A114185 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ 1 + (x + y)) (λ (x _y : ℤ) ↦ x) (x + x) 2 1 - 2) - x)

end Sequence

