/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A035277 sequence 
-/


namespace Sequence

@[OEIS := A035277, offset := 1, derive := true, maxIndex := 100]
def A035277 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 * (2 + (y * 2))) + y) * (x + x)) x 1

end Sequence

