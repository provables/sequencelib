/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088021 sequence
-/

namespace Sequence

@[OEIS := A088021, offset := 0, maxIndex := 7, derive := true]
def A088021 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) (x * x) 1 / loop (λ (x y) ↦ (y * x) * y) x 1

end Sequence