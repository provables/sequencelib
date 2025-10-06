/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185020 sequence
-/

namespace Sequence

@[OEIS := A185020, offset := 0, maxIndex := 100, derive := true]
def A185020 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x y) ↦ (x * y) + x) x 1) *
  loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ ((x + x) + x) + y) x 1 1

end Sequence