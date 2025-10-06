/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A244014 sequence
-/

namespace Sequence

@[OEIS := A244014, offset := 0, maxIndex := 7, derive := true]
def A244014 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) * (x + y)) (λ (_x _y) ↦ 2) x 1 1 + 1

end Sequence