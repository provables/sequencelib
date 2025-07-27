/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A134353 sequence 
-/

namespace Sequence

@[OEIS := A134353, offset := 0, derive := true, maxIndex := 10]
def A134353 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x + x)) (x) ((1 + (x / 2)))


end Sequence
