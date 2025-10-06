/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168677 sequence
-/

namespace Sequence

@[OEIS := A168677, offset := 1, maxIndex := 100, derive := true]
def A168677 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((1 + x) % 4) ≤ 0 then (x % (2 * 4)) + 2 else 1

end Sequence