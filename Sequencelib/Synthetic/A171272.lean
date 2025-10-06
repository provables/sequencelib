/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171272 sequence
-/

namespace Sequence

@[OEIS := A171272, offset := 0, maxIndex := 100, derive := true]
def A171272 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + ((y - 1) * y)) + x) (x + x) 1

end Sequence