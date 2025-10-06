/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085409 sequence
-/

namespace Sequence

@[OEIS := A085409, offset := 0, maxIndex := 100, derive := true]
def A085409 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (loop (λ (x y) ↦ x + y) ((x + x) + x) 0 * x)

end Sequence