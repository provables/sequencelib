/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A296063 sequence 
-/


namespace Sequence

@[OEIS := A296063, offset := 1, derive := true, maxIndex := 100]
def A296063 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y : ℤ) ↦ 1 - x) x (1 + x)

end Sequence

