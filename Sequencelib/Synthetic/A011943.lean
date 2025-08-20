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
# A011943 sequence 
-/


namespace Sequence

@[OEIS := A011943, offset := 1, derive := true, maxIndex := 50]
def A011943 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) - y) (λ (x _y : ℤ) ↦ x) (x + x) 1 2

end Sequence

