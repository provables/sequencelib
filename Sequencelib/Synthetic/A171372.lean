/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171372 sequence
-/

namespace Sequence

@[OEIS := A171372, offset := 0, maxIndex := 100, derive := true]
def A171372 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * if (x % (1 + 4)) ≤ 0 then 0 else 2)

end Sequence