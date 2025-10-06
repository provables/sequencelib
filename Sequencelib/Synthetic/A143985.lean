/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143985 sequence
-/

namespace Sequence

@[OEIS := A143985, offset := 0, maxIndex := 8, derive := true]
def A143985 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + ((x * x) - y)) x 2 - 2

end Sequence