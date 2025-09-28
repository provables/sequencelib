/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151819 sequence 
-/


namespace Sequence

@[OEIS := A151819, offset := 1, derive := true, maxIndex := 10]
def A151819 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (((y / 2) % 2) + 1) * x) x 1 / 2) / 2)

end Sequence

