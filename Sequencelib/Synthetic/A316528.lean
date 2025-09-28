/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A316528 sequence 
-/


namespace Sequence

@[OEIS := A316528, offset := 0, derive := true, maxIndex := 10]
def A316528 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) y 0 2 + x) + x) x 1

end Sequence

