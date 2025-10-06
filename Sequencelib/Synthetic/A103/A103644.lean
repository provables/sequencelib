/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103644 sequence
-/

namespace Sequence

@[OEIS := A103644, offset := 0, maxIndex := 100, derive := true]
def A103644 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x - ((x * 2) * 2)) x 1 0)

end Sequence