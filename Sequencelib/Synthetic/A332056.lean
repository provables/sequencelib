/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332056 sequence 
-/


namespace Sequence

@[OEIS := A332056, offset := 1, derive := true, maxIndex := 60]
def A332056 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y : ℤ) ↦ 2 - (loop (λ (x _y : ℤ) ↦ -x) x x + y)) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

