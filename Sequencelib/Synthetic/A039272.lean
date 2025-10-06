/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039272 sequence
-/

namespace Sequence

@[OEIS := A039272, offset := 1, maxIndex := 70, derive := true]
def A039272 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * ((1 + x) / (2 + (2 * 4)))) + x

end Sequence