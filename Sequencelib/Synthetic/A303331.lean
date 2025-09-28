/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A303331 sequence 
-/


namespace Sequence

@[OEIS := A303331, offset := 1, derive := true, maxIndex := 10]
def A303331 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ y - x) x 1 + y) (λ (x _y : ℤ) ↦ x) x 2 1 - 2)

end Sequence

