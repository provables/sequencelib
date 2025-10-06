/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130974 sequence
-/

namespace Sequence

@[OEIS := A130974, offset := 0, maxIndex := 100, derive := true]
def A130974 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * ((x / 3) % 2))

end Sequence