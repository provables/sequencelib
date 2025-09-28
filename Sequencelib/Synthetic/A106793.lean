/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106793 sequence 
-/


namespace Sequence

@[OEIS := A106793, offset := 0, derive := true, maxIndex := 16]
def A106793 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ (x * x) + y) 2 2 - y) * x) x 1

end Sequence

