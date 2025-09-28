/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091030 sequence 
-/


namespace Sequence

@[OEIS := A091030, offset := 1, derive := true, maxIndex := 100]
def A091030 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x + x)) x 1

end Sequence

