/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063122 sequence 
-/


namespace Sequence

@[OEIS := A063122, offset := 1, derive := true, maxIndex := 50]
def A063122 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((3 * (x + x)) + 1) * (2 + loop (λ (_x _y : ℤ) ↦ 1) x 2))

end Sequence

