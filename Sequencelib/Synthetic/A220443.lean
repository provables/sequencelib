/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220443 sequence
-/

namespace Sequence

@[OEIS := A220443, offset := 0, maxIndex := 40, derive := true]
def A220443 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x + x) + x) 2 y * y) + x) x 0

end Sequence