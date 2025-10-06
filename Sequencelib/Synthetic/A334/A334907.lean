/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A334907 sequence
-/

namespace Sequence

@[OEIS := A334907, offset := 0, maxIndex := 16, derive := true]
def A334907 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (3 + 2 * y) * x) (λ (_x y) ↦ 1 + y) x 1 x

end Sequence