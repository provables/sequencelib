/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A214210 sequence 
-/


namespace Sequence

@[OEIS := A214210, offset := 0, derive := true, maxIndex := 100]
def A214210 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x + y) (λ (_x y : ℤ) ↦ y / 2) x 0 (x / 3) % 2)

end Sequence

