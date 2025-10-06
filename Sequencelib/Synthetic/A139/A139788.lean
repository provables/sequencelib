/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139788 sequence
-/

namespace Sequence

@[OEIS := A139788, offset := 0, maxIndex := 79, derive := true]
def A139788 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * (((x + x) + x) % (1 + 4)))

end Sequence