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
# A159940 sequence 
-/


namespace Sequence

@[OEIS := A159940, offset := 2, derive := true, maxIndex := 39]
def A159940 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((3 * loop (λ (x y : ℤ) ↦ x + (y * y)) x x) + 2) * 2)

end Sequence

