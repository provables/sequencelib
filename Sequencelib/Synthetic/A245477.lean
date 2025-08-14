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

# A245477 sequence 
-/

namespace Sequence

@[OEIS := A245477, offset := 0, derive := true, maxIndex := 87]
def A245477 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ y) ((x % (2 + (x % 2)))) (1)

end Sequence
