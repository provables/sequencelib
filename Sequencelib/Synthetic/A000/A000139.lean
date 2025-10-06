/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000139 sequence
-/

namespace Sequence

@[OEIS := A000139, offset := 0, maxIndex := 100, derive := true]
def A000139 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ x * y) ((x + x) + x) 2 / loop (λ (x y) ↦ x * y) (x + x) 1) / loop (λ (x y) ↦ x * y) x 1) / (1 + x)) /
  (1 + (x + x))

end Sequence