/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192079 sequence 
-/


namespace Sequence

@[OEIS := A192079, offset := 2, derive := true, maxIndex := 6]
def A192079 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ 1 + x) x 2 x + y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

