/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119910 sequence 
-/


namespace Sequence

@[OEIS := A119910, offset := 1, derive := true, maxIndex := 84]
def A119910 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x y : ℤ) ↦ y - x) x 1 2

end Sequence

