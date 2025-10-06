/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307753 sequence
-/

namespace Sequence

@[OEIS := A307753, offset := 1, maxIndex := 35, derive := true]
def A307753 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 - x) % (2 * 3)) + 1) / (x + 1)

end Sequence