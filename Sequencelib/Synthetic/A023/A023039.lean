/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023039 sequence
-/

namespace Sequence

@[OEIS := A023039, offset := 0, maxIndex := 50, derive := true]
def A023039 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - (2 * (x + x))) (λ (x _y) ↦ x) (x + x) 1 2

end Sequence