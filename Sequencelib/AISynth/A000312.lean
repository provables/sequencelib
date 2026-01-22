/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000312 sequence
-/

namespace Sequence

@[OEIS := A000312, offset := 0, maxIndex := 100, derive := true]

def A000312 : ℕ → ℕ
| 0 => 1
| (n + 1) => (n + 1) ^ (n + 1)


end Sequence