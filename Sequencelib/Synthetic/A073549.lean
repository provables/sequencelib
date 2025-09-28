/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073549 sequence 
-/


namespace Sequence

@[OEIS := A073549, offset := 1, derive := true, maxIndex := 24]
def A073549 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 * (loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 x + x)) x 0

end Sequence

