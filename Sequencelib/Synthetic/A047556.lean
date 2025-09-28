/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047556 sequence 
-/


namespace Sequence

@[OEIS := A047556, offset := 1, derive := true, maxIndex := 50]
def A047556 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (comprN (λ (x : ℤ) ↦ (2 + ((x / 2) * x)) % 4) x + 1)

end Sequence

