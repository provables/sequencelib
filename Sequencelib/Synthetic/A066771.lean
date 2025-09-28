/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066771 sequence 
-/


namespace Sequence

@[OEIS := A066771, offset := 0, derive := true, maxIndex := 50]
def A066771 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x y : ℤ) ↦ (y - x) + y) (x + x) 1 0

end Sequence

