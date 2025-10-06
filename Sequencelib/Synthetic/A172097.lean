/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172097 sequence
-/

namespace Sequence

@[OEIS := A172097, offset := 0, maxIndex := 63, derive := true]
def A172097 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + (x % (2 + y))) (x + x) 2 + 1

end Sequence