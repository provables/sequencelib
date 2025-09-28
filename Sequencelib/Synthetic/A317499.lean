/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A317499 sequence 
-/


namespace Sequence

@[OEIS := A317499, offset := 0, derive := true, maxIndex := 100]
def A317499 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ 1 - (3 * (x + y))) (λ (x _y : ℤ) ↦ x) x 1 0

end Sequence

