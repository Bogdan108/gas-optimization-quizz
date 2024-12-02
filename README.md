# Gas optimization quizz
## Luckyanchuk Bogdan BSE-213
Homework for students on the topic of gas optimization.


**Tasks 1-9 are worth 1 point, task 10 is worth 5 points**

## Task 1
В задаче для контрактов Addition и Subtraction использовалась оптимизация с помощью оператора unchecked, обработка переполнения выполнялась вручную с кастомной ошибкой UnderflowError. Для контракта Division использовался побитовый сдвиг. 

Удалось достичь следующей оптимизации: 
```
Ran 4 tests for test/01. ArithmeticOperators.t.sol:ArithmeticOperatorsTest
[PASS] test_Addition() (gas: 31798)
[PASS] test_DivisionBy128() (gas: 5527)
[PASS] test_DivisionBy2() (gas: 5559)
[PASS] test_Subtraction() (gas: 31703)

Ran 4 tests for test/01. ArithmeticOperators.t.sol:ArithmeticOperatorsOptimizedTest
[PASS] test_Addition() (gas: 31582)
[PASS] test_DivisionBy128() (gas: 5451)
[PASS] test_DivisionBy2() (gas: 5483)
[PASS] test_Subtraction() (gas: 31565)
```
## Task 2
В задаче использовалась оптимизация за счет использования локальной переменной, а не обращения к памяти контракта, также вместо uint32 использовалась uint8 в качестве указателся итератора.

Удалось достичь следующей оптимизации: 
```
Ran 1 test for test/02. ArrayLength.t.sol:ArrayLengthOptimizedTest
[PASS] test_Call() (gas: 8237)

Ran 1 test for test/02. ArrayLength.t.sol:ArrayLengthsTest
[PASS] test_Call() (gas: 8973)
```
## Task 3
Оптимизация достигнута за счет использования calldata, а не memory

Удалось достичь следующей оптимизации: 
```
Ran 1 test for test/03. CalldataMemory.t.sol:CalldataMemoryOptimizedTest
[PASS] test_Call() (gas: 31543)

Ran 1 test for test/03. CalldataMemory.t.sol:CalldataMemoryTest
[PASS] test_Call() (gas: 32497)
```
## Task 4
Оптимизация достигнута за счет исподьзования оператора unchecked, так как с таким диапазоном чисел - переполнение невозможно.

Удалось достичь следующей оптимизации: 
```
Ran 3 tests for test/04. Loops.t.sol:LoopsOptimizedTest
[PASS] test_doWhile() (gas: 5843)
[PASS] test_for() (gas: 6561)
[PASS] test_while() (gas: 5966)

Ran 3 tests for test/04. Loops.t.sol:LoopsTest
[PASS] test_doWhile() (gas: 7203)
[PASS] test_for() (gas: 7921)
[PASS] test_while() (gas: 7326)
```
## Task 5
Оптимизация достигнута за счет правильного порядка определения данных в контракте, получилось упаковать даннные в 3 слота памяти.

Удалось достичь следующей оптимизации: 
```
Ran 1 test for test/05. PackVariables.t.sol:PackVariablesTest
[PASS] test_set() (gas: 159392)

Ran 1 test for test/05. PackVariables.t.sol:PackVariablesOptimizedTest
[PASS] test_set() (gas: 137296)
```
## Task 6
Оптимизация достигнута за счет использования кастомной ошибки.

Удалось достичь следующей оптимизации: 
```
Ran 1 test for test/06. Errors.t.sol:ErrorsTest
[PASS] test_call() (gas: 11139)

Ran 1 test for test/06. Errors.t.sol:ErrorsOptimizedTest
[PASS] test_call() (gas: 8985)
```
## Task 7
Оптимизация достигнута за счет удаления лишней логики перестановки в задаче

Удалось достичь следующей оптимизации: 
```
Ran 1 test for test/07. Swap.t.sol:SwapTest
[PASS] test_swap() (gas: 9063)

Ran 1 test for test/07. Swap.t.sol:SwapOptimizedTest
[PASS] test_swap() (gas: 8798)
```
## Task 8
Оптимизация достигнута за счет использования локального массива фиксированной длины, что минимизирует обращение к памяти контракта.

Удалось достичь следующей оптимизации: 
```
Ran 1 test for test/08. ArrayType.t.sol:ArrayTypeOptimizedTest
[PASS] test_init() (gas: 323046)

Ran 1 test for test/08. ArrayType.t.sol:ArrayTypeTest
[PASS] test_init() (gas: 4504856)
```
## Task 9
За счет оптимизации ленивой логики логических вычислений в solidity, получилось оптимизироватиь код контракта.

Удалось достичь следующей оптимизации:
```
Ran 1 test for test/09. NestedIf.t.sol:NestedIfTest
[PASS] test_call() (gas: 8158)

Ran 1 test for test/09. NestedIf.t.sol:NestedIfOptimizedTest
[PASS] test_call() (gas: 8077)
```