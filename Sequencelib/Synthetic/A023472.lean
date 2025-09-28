/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023472 sequence 
-/


namespace Sequence

@[OEIS := A023472, offset := 0, derive := true, maxIndex := 100]
def A023472 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ x - (y * y)) 4 x

end Sequence

