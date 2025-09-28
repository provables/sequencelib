/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A291001 sequence 
-/


namespace Sequence

@[OEIS := A291001, offset := 0, derive := true, maxIndex := 100]
def A291001 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (y + y)) + x) (λ (x y : ℤ) ↦ (x + x) + y) x 0 2

end Sequence

