/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348463 sequence 
-/


namespace Sequence

@[OEIS := A348463, offset := 2, derive := true, maxIndex := 5]
def A348463 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((2 + (x * y)) * x) + y) 2 x * (2 + x))

end Sequence

