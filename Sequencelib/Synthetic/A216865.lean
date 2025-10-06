/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216865 sequence
-/

namespace Sequence

@[OEIS := A216865, offset := 0, maxIndex := 46, derive := true]
def A216865 (x : ℕ) : ℤ :=
  (((((((((x * x) - 1) / 4) + 2) * 2) - 1) - 2 * x) * 2) * 2) * 2

end Sequence