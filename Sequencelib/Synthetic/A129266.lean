/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A129266 sequence 
-/


namespace Sequence

@[OEIS := A129266, offset := 1, derive := true, maxIndex := 10]
def A129266 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 - loop (λ (x _y : ℤ) ↦ x / (1 + (x % 2))) x x) + x) + x)

end Sequence

