/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163307 sequence
-/

namespace Sequence

@[OEIS := A163307, offset := 0, maxIndex := 100, derive := true]
def A163307 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) + y) (λ (x y) ↦ 2 * (((x + y) + y) * 2)) x 1 2

end Sequence