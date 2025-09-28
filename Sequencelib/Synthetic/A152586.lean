/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152586 sequence 
-/


namespace Sequence

@[OEIS := A152586, offset := 1, derive := true, maxIndex := 7]
def A152586 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x _y : ℤ) ↦ x * x) x (1 + (2 * (4 + 2))))

end Sequence

