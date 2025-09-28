/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174971 sequence 
-/


namespace Sequence

@[OEIS := A174971, offset := 0, derive := true, maxIndex := 84]
def A174971 (x : ℕ) : ℤ :=
  loop (λ (x _y : ℤ) ↦ -x) x 3

end Sequence

