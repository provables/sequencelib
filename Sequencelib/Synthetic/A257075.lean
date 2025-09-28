/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257075 sequence 
-/


namespace Sequence

@[OEIS := A257075, offset := 0, derive := true, maxIndex := 100]
def A257075 (x : ℕ) : ℤ :=
  loop (λ (x _y : ℤ) ↦ -x) (x % 3) 1

end Sequence

