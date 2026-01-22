/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002275 sequence
-/

namespace Sequence

@[OEIS := A002275, offset := 0, maxIndex := 100, derive := true]

def A002275 : ℕ → ℕ
| 0 => 0
| n + 1 => (10^(n+1) - 1) / 9


end Sequence