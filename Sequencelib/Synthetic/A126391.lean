/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126391 sequence 
-/


namespace Sequence

@[OEIS := A126391, offset := 1, derive := true, maxIndex := 15]
def A126391 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 + y) * x) (λ (_x y : ℤ) ↦ y + y) (x - 1) 1 2

end Sequence

