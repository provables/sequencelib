/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180844 sequence
-/

namespace Sequence

@[OEIS := A180844, offset := 0, maxIndex := 16, derive := true]
def A180844 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x y) ↦ (x * x) + y) 2 2 * x) + y) (λ (_x y) ↦ y + y) x 0 1

end Sequence