/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192916 sequence
-/

namespace Sequence

@[OEIS := A192916, offset := 0, maxIndex := 100, derive := true]
def A192916 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 1 0 * loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 4

end Sequence