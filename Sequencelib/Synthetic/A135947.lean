/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135947 sequence 
-/


namespace Sequence

@[OEIS := A135947, offset := 0, derive := true, maxIndex := 84]
def A135947 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y : ℤ) ↦ x + y) (λ (_x y : ℤ) ↦ y / 2) x 0 x / 2) + x) % 2)

end Sequence

