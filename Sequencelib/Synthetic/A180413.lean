/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180413 sequence 
-/


namespace Sequence

@[OEIS := A180413, offset := 1, derive := true, maxIndex := 33]
def A180413 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + x) * (loop (λ (x y : ℤ) ↦ x * y) 4 (1 + x) * x))

end Sequence

