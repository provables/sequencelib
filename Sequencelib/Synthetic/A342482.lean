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
# A342482 sequence 
-/


namespace Sequence

@[OEIS := A342482, offset := 3, derive := true, maxIndex := 30]
def A342482 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 2 * (x + y)) (1 + y) y + x) x 0

end Sequence

