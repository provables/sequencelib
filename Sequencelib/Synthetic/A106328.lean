/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106328 sequence 
-/


namespace Sequence

@[OEIS := A106328, offset := 1, derive := true, maxIndex := 50]
def A106328 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x y : ℤ) ↦ (x + y) + y) (x + x) 1 2 / 2)

end Sequence

