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
# A339573 sequence 
-/


namespace Sequence

@[OEIS := A339573, offset := 2, derive := true, maxIndex := 63]
def A339573 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y : ℤ) ↦ (y / 3) + x) x x

end Sequence

