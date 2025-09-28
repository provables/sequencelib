/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047528 sequence 
-/


namespace Sequence

@[OEIS := A047528, offset := 1, derive := true, maxIndex := 50]
def A047528 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (comprN (λ (x : ℤ) ↦ ((x / 2) * x) % 4) (x + 1) - 1)

end Sequence

