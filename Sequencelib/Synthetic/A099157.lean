/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099157 sequence 
-/


namespace Sequence

@[OEIS := A099157, offset := 0, derive := true, maxIndex := 50]
def A099157 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ 2 * ((x + y) + x)) (x + x) 0 1 / 2)

end Sequence

