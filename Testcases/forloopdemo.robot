*** Test Cases ***
#Forloop1
 #   FOR     ${i}    IN RANGE    1   10
  #      LOG TO CONSOLE  ${i}
   # END

#Forloop2
 #   FOR     ${i}    IN  1   2   3   4   5   6   7   8
  #  LOG TO CONSOLE      ${i}
   # END

#Forloop3withlist
 #   @{items}    create list  1  2  3  4  5
  #  FOR     ${i}    IN      @{items}
   # LOG TO CONSOLE  ${i}
    #END
#Forloop4
 #   FOR     ${i}    IN   JOHN   DAVID    SMITH   SCOTT
  #  LOG TO CONSOLE  ${i}
   # END
#Forloop5
 #   @{nameslist}    create list  JOHN   DAVID    SMITH   SCOTT
  #  FOR     ${i}    IN    @{nameslist}
   # LOG TO CONSOLE  ${i}
    #END
Forloop6withExit
    @{items}    create list  1  2   3   4   5
    FOR     ${i}        IN      @{items}
    LOG TO CONSOLE      ${i}
    exit for loop if    ${i}==3
    END









