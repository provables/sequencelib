/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067980 sequence
-/

namespace Sequence

@[OEIS := A067980, offset := 0, maxIndex := 28, derive := true]
def A067980 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (1 + x) (3 * (1 + x)) x

end Sequence