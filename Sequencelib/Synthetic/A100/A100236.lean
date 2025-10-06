/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100236 sequence
-/

namespace Sequence

@[OEIS := A100236, offset := 0, maxIndex := 20, derive := true]
def A100236 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 * (x + y))) + y) (λ (x y) ↦ (1 + x) + y) x 1 0

end Sequence