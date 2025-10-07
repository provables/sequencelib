/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158333 sequence
-/

namespace Sequence

@[OEIS := A158333, offset := 0, maxIndex := 64, derive := true]
def A158333 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ 1 - (x % (loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * 2))) (x + x)

end Sequence