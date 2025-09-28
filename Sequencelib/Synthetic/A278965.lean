/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278965 sequence 
-/


namespace Sequence

@[OEIS := A278965, offset := 1, derive := true, maxIndex := 9]
def A278965 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 + loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x _y : ℤ) ↦ x) x 2 2) / 3) + x)

end Sequence

