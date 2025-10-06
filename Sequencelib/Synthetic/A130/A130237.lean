/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130237 sequence
-/

namespace Sequence

@[OEIS := A130237, offset := 0, maxIndex := 100, derive := true]
def A130237 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) + x) x 1 * x

end Sequence