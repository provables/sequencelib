/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095768 sequence 
-/


namespace Sequence

@[OEIS := A095768, offset := 1, derive := true, maxIndex := 30]
def A095768 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x y : ℤ) ↦ (x + x) + y) x 2)

end Sequence

