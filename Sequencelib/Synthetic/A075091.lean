/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075091 sequence 
-/


namespace Sequence

@[OEIS := A075091, offset := 0, derive := true, maxIndex := 46]
def A075091 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x) x 2 1 * loop (λ (x _y : ℤ) ↦ 2 - x) x 2)

end Sequence

