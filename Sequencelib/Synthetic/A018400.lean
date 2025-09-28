/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018400 sequence 
-/


namespace Sequence

@[OEIS := A018400, offset := 1, derive := true, maxIndex := 6]
def A018400 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x + x) x 1 2

end Sequence

