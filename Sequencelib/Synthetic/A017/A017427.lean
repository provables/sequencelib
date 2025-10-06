/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017427 sequence
-/

namespace Sequence

@[OEIS := A017427, offset := 0, maxIndex := 22, derive := true]
def A017427 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (1 + (2 + (loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * x)))

end Sequence