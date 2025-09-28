/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090590 sequence 
-/


namespace Sequence

@[OEIS := A090590, offset := 1, derive := true, maxIndex := 26]
def A090590 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y : ℤ) ↦ 2 * ((x - y) - y)) (λ (x _y : ℤ) ↦ x + x) x 1 2

end Sequence

