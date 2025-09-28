/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250737 sequence 
-/


namespace Sequence

@[OEIS := A250737, offset := 1, derive := true, maxIndex := 100]
def A250737 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) 2 (loop (λ (x _y : ℤ) ↦ x + x) x 1))

end Sequence

