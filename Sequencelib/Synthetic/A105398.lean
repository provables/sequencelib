/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105398 sequence
-/

namespace Sequence

@[OEIS := A105398, offset := 4, maxIndex := 100, derive := true]
def A105398 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| 2 * (2 + (2 * (x % 2)))

end Sequence