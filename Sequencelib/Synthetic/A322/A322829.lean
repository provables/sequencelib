/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A322829 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A322829, offset := 0, maxIndex := 84, derive := true]
def A322829 (x : ℕ) : ℤ :=
  (((((((((x * x) * x) % (1 + (2 + 4))) - 1) / 3) * x) + 1) + x) % 3) - 1

end Sequence