/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021697 sequence 
-/


namespace Sequence

@[OEIS := A021697, offset := 0, derive := true, maxIndex := 99]
def A021697 (x : ℕ) : ℕ :=
  Int.toNat <| (2 - loop2 (λ (x y : ℤ) ↦ x - y) (λ (x _y : ℤ) ↦ x) x 2 (1 - (x % 3)))

end Sequence

