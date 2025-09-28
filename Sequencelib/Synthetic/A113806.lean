/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113806 sequence 
-/


namespace Sequence

@[OEIS := A113806, offset := 1, derive := true, maxIndex := 53]
def A113806 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((x + y) % 2) + x) + x) 3 x - x)

end Sequence

