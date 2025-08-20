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
# A047614 sequence 
-/


namespace Sequence

@[OEIS := A047614, offset := 1, derive := true, maxIndex := 57]
def A047614 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 + (x / (2 - (x % 2)))) 2 x % 2) x

end Sequence

