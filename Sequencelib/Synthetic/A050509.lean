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

# A050509 sequence 
-/

namespace Sequence

@[OEIS := A050509, offset := 0, derive := true, maxIndex := 39]
def A050509 (n : ℕ) : ℤ :=
  let x := n - 0
  ((1 + loop (λ(x y : ℤ) ↦ (2 + (x + y))) (x) ((x * x))) * (1 + x))

end Sequence
