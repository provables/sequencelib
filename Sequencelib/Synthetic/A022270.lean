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
# A022270 sequence 
-/


namespace Sequence

@[OEIS := A022270, offset := 0, derive := true, maxIndex := 100]
def A022270 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) x (((x + x) * x) * 3) - x)

end Sequence

