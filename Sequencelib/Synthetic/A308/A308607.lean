/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A308607 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A308607, offset := 4, maxIndex := 60, derive := true]
def A308607 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (4 * (x + (2 * 2))) - loop (λ (_x _y) ↦ 2) x x

end Sequence