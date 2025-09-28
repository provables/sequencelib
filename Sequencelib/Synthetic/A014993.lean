/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014993 sequence 
-/


namespace Sequence

@[OEIS := A014993, offset := 1, derive := true, maxIndex := 100]
def A014993 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y : ℤ) ↦ 1 + (x - loop (λ (x y : ℤ) ↦ x * (2 + y)) 2 x)) x 1

end Sequence

