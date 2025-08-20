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
# A255186 sequence 
-/


namespace Sequence

@[OEIS := A255186, offset := 0, derive := true, maxIndex := 100]
def A255186 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((x - 1) - 2) + y) ((2 * (x + x)) + x) x

end Sequence

