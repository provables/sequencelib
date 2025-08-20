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
# A342126 sequence 
-/


namespace Sequence

@[OEIS := A342126, offset := 0, derive := true, maxIndex := 100]
def A342126 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (x - 1) % y) x 0) 2 x - x) 2 x

end Sequence

