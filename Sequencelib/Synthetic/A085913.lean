/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085913 sequence 
-/


namespace Sequence

@[OEIS := A085913, offset := 1, derive := true, maxIndex := 54]
def A085913 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (_x y : ℤ) ↦ y) ((x * x) / 2) x)

end Sequence

