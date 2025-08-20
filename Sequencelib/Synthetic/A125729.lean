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
# A125729 sequence 
-/


namespace Sequence

@[OEIS := A125729, offset := 1, derive := true, maxIndex := 20]
def A125729 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ ((x * y) + x) + y) 2 x + x) x 0

end Sequence

