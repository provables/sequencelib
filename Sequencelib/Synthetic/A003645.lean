/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003645 sequence
-/

namespace Sequence

@[OEIS := A003645, offset := 0, maxIndex := 22, derive := true]
def A003645 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x + x) + y) 2 (y + y) * x) x 1 / loop (λ (x y) ↦ (2 + y) * x) x 1

end Sequence