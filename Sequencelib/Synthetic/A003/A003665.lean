/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003665 sequence
-/

namespace Sequence

@[OEIS := A003665, offset := 0, maxIndex := 100, derive := true]
def A003665 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ 2 * (((x * 2) * 2) + y)) x 1 1

end Sequence