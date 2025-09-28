/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152839 sequence 
-/


namespace Sequence

@[OEIS := A152839, offset := 0, derive := true, maxIndex := 5]
def A152839 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x * y) y 1 - loop (λ (x y : ℤ) ↦ x * y) x 1) x 0

end Sequence

