/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097594 sequence
-/

namespace Sequence

@[OEIS := A097594, offset := 0, maxIndex := 100, derive := true]
def A097594 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (1 + (x % (1 + y))) + y) (λ (x _y) ↦ x) x 1 2 + 1

end Sequence