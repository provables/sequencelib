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
# A171389 sequence 
-/


namespace Sequence

@[OEIS := A171389, offset := 0, derive := true, maxIndex := 100]
def A171389 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (x + x)) x (loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) 2 2)

end Sequence

