/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307808 sequence
-/

namespace Sequence

@[OEIS := A307808, offset := 1, maxIndex := 22, derive := true]
def A307808 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 3 % (1 + ((2 * 2) / (x + 1)))

end Sequence