/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213827 sequence
-/

namespace Sequence

@[OEIS := A213827, offset := 0, maxIndex := 100, derive := true]
def A213827 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x (x * x) * loop (λ (x y) ↦ x + y) x 0

end Sequence