/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017069 sequence 
-/


namespace Sequence

@[OEIS := A017069, offset := 0, derive := true, maxIndex := 18]
def A017069 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 * (x * y)) (λ (x _y : ℤ) ↦ x) 4 (x + x) 2

end Sequence

