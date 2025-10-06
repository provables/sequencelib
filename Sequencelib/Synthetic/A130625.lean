/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130625 sequence
-/

namespace Sequence

@[OEIS := A130625, offset := 0, maxIndex := 31, derive := true]
def A130625 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) y 3 1 + x) + x) x 1

end Sequence