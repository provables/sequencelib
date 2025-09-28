/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088668 sequence 
-/


namespace Sequence

@[OEIS := A088668, offset := 1, derive := true, maxIndex := 13]
def A088668 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (x * x) (loop (λ (x _y : ℤ) ↦ 1 + (x + x)) x 1)

end Sequence

