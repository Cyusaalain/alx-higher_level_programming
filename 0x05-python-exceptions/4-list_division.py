#!/usr/bin/python3

def list_division(my_list_1, my_list_2, list_length):
    result = []
    i = 0

    try:
        while i < list_length:
            try:
                element_1 = my_list_1[i] if i < len(my_list_1) else 0
                element_2 = my_list_2[i] if i < len(my_list_2) else 0
                division_result = element_1 / element_2
                result.append(division_result)
            except ZeroDivisionError:
                print("division by 0")
                result.append(0)
            except (TypeError, ValueError):
                print("wrong type")
                result.append(0)
            finally:
                i += 1
    except IndexError:
        print("out of range")
    finally:
        return result
