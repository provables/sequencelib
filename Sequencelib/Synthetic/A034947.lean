/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034947 sequence 
-/


namespace Sequence

@[OEIS := A034947, offset := 1, derive := true, maxIndex := 100]
def A034947 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 - (loop (λ (x _y : ℤ) ↦ x / (1 + (x % 2))) x x % 4))

end Sequence

