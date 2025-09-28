/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080956 sequence 
-/


namespace Sequence

@[OEIS := A080956, offset := 0, derive := true, maxIndex := 100]
def A080956 (x : ℕ) : ℤ :=
  (1 + loop (λ (x y : ℤ) ↦ x - y) x x)

end Sequence

