/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166077 sequence
-/

namespace Sequence

@[OEIS := A166077, offset := 0, maxIndex := 9, derive := true]
def A166077 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x) (λ (_x y) ↦ 1 + y) x 1 x

end Sequence