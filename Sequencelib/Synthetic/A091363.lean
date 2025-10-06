/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091363 sequence
-/

namespace Sequence

@[OEIS := A091363, offset := 0, maxIndex := 19, derive := true]
def A091363 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x * y) x x * x) * x

end Sequence