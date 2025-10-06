/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179820 sequence
-/

namespace Sequence

@[OEIS := A179820, offset := 0, maxIndex := 86, derive := true]
def A179820 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x 0 % (2 + x)

end Sequence