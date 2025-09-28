/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134171 sequence 
-/


namespace Sequence

@[OEIS := A134171, offset := 1, derive := true, maxIndex := 100]
def A134171 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x - 2) + y) ((x + x) + x) 0 * (x - 2))

end Sequence

