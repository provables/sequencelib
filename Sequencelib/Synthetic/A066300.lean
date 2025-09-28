/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066300 sequence 
-/


namespace Sequence

@[OEIS := A066300, offset := 1, derive := true, maxIndex := 14]
def A066300 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) y 0 * x) (λ (_x y : ℤ) ↦ y) (1 + x) 1 x

end Sequence

