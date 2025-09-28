/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072175 sequence 
-/


namespace Sequence

@[OEIS := A072175, offset := 0, derive := true, maxIndex := 100]
def A072175 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 2 + x) y x - 1) (λ (x _y : ℤ) ↦ 1 - x) x 1 1

end Sequence

