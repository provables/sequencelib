/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134301 sequence
-/

namespace Sequence

@[OEIS := A134301, offset := 0, maxIndex := 64, derive := true]
def A134301 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) + x) % (2 + (2 * 4))

end Sequence