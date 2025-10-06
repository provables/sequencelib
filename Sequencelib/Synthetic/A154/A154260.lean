/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154260 sequence
-/

namespace Sequence

@[OEIS := A154260, offset := 1, maxIndex := 100, derive := true]
def A154260 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 * (((x % 2) + x) + x))) * ((x + 1) / 2)

end Sequence