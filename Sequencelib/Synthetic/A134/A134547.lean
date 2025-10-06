/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134547 sequence
-/

namespace Sequence

@[OEIS := A134547, offset := 1, maxIndex := 45, derive := true]
def A134547 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + (2 + (1 + x))) * (1 + x)) * ((2 * 2) + 1)) + 4

end Sequence