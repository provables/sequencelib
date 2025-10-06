/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A333525 sequence
-/

namespace Sequence

@[OEIS := A333525, offset := 1, maxIndex := 50, derive := true]
def A333525 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (x + x)) / ((2 * 4) + x)

end Sequence