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

# A063305 sequence 
-/

namespace Sequence

@[OEIS := A063305, offset := 2, derive := true, maxIndex := 50]
def A063305 (n : ℕ) : ℤ :=
  let x := n - 2
  ((loop2 (λ(x y : ℤ) ↦ (2 + (x + y))) (λ(x y : ℤ) ↦ 2) ((x + x)) (x) (0) * 2) - 1)

end Sequence
