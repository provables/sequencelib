/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100088 sequence 
-/


namespace Sequence

@[OEIS := A100088, offset := 0, derive := true, maxIndex := 10]
def A100088 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop2 (λ (_x y : ℤ) ↦ -y) (λ (x _y : ℤ) ↦ x) y 2 0 + x) + x) x 1

end Sequence

