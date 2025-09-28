/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047444 sequence 
-/


namespace Sequence

@[OEIS := A047444, offset := 1, derive := true, maxIndex := 63]
def A047444 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x % 2) + y) x x + x)

end Sequence

