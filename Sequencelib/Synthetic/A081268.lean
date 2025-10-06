/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081268 sequence
-/

namespace Sequence

@[OEIS := A081268, offset := 0, maxIndex := 45, derive := true]
def A081268 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) (1 + ((x + x) + x)) x + x

end Sequence