/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004084 sequence
-/

namespace Sequence

@[OEIS := A004084, offset := 1, maxIndex := 54, derive := true]
def A004084 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((comprN (λ (x) ↦ if (x % (2 * 4)) ≤ 0 then x else 0) x + 1) + x) + x

end Sequence