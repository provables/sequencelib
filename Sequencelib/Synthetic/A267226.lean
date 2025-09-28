/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267226 sequence 
-/


namespace Sequence

@[OEIS := A267226, offset := 1, derive := true, maxIndex := 100]
def A267226 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (1 + (x + x)) + y) (λ (_x _y : ℤ) ↦ 0) x 3 (1 + x)

end Sequence

