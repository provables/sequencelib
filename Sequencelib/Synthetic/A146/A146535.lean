/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A146535 sequence
-/

namespace Sequence

@[OEIS := A146535, offset := 1, maxIndex := 68, derive := true]
def A146535 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x + x) / ((((x % 3) % 2) * 2) + 1)) + 1

end Sequence