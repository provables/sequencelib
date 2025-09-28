/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088795 sequence 
-/


namespace Sequence

@[OEIS := A088795, offset := 1, derive := true, maxIndex := 50]
def A088795 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ ((y * y) / 2) + x) (x - 1) 2 / 2) + x)

end Sequence

