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
# A028399 sequence 
-/


namespace Sequence

@[OEIS := A028399, offset := 2, derive := true, maxIndex := 100]
def A028399 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) x 0

end Sequence

