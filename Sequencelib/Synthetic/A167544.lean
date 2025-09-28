/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167544 sequence 
-/


namespace Sequence

@[OEIS := A167544, offset := 4, derive := true, maxIndex := 100]
def A167544 (n : ℕ) : ℤ :=
  let x := n - 4
  (-loop (λ (x y : ℤ) ↦ 2 + (x - y)) x 2)

end Sequence

