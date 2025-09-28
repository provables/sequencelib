/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229838 sequence 
-/


namespace Sequence

@[OEIS := A229838, offset := 1, derive := true, maxIndex := 50]
def A229838 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((1 + x) * (x / 2)) % 4) (x + 2)

end Sequence

