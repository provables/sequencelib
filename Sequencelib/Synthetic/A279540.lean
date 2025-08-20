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
# A279540 sequence 
-/


namespace Sequence

@[OEIS := A279540, offset := 0]
def A279540 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 2 * ((2 * (x + x)) + x)) x 1) x 0

end Sequence

