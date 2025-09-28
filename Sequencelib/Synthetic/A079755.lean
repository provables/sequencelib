/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079755 sequence 
-/


namespace Sequence

@[OEIS := A079755, offset := 3, derive := true, maxIndex := 22]
def A079755 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((y / 2) + x) * (2 + y)) + x) x 1 - 1)

end Sequence

