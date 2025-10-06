/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047613 sequence
-/

namespace Sequence

@[OEIS := A047613, offset := 1, maxIndex := 100, derive := true]
def A047613 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 - (x % 4)) / 2) + x) + x

end Sequence