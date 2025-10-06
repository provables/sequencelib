/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A030511 sequence
-/

namespace Sequence

@[OEIS := A030511, offset := 3, maxIndex := 50, derive := true]
def A030511 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 * (((2 + x) * (2 + x)) / 3)

end Sequence