/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134057 sequence 
-/


namespace Sequence

@[OEIS := A134057, offset := 0, derive := true, maxIndex := 100]
def A134057 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ (y * y) - y) (λ (_x y : ℤ) ↦ (y + y) + 1) x 0 1 / 2)

end Sequence

