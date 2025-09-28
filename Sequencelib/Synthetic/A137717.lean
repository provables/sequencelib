/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137717 sequence 
-/


namespace Sequence

@[OEIS := A137717, offset := 0, derive := true, maxIndex := 30]
def A137717 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ -((x + y) * 2)) (λ (x _y : ℤ) ↦ x + x) x 1 1

end Sequence

