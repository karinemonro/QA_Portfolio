# Login – Test Cases

**Application Under Test:** Practice Test Automation – Login  
**URL:** https://practicetestautomation.com/practice-test-login/

## Test Data
- **Valid username:** student  
- **Valid password:** Password123  

---

## TC-01 Valid login

**Priority:** High  

**Preconditions:**
- User is on the login page  
- Valid user account exists  

**Steps:**
1. Open the login page  
2. Enter username: `student`  
3. Enter password: `Password123`  
4. Click **Submit**

**Expected Result:**
- User is successfully authenticated  
- User is redirected to the *Logged In Successfully* page  
- Confirmation message is displayed  
- Logout button is visible  

---

## TC-02 Invalid password

**Priority:** High  

**Preconditions:**
- User is on the login page  
- Valid username exists  

**Steps:**
1. Open the login page  
2. Enter username: `student`  
3. Enter invalid password: `WrongPassword`  
4. Click **Submit**

**Expected Result:**
- Login fails  
- Error message is displayed: *"Your password is invalid!"*  
- User remains on the login page  
- User is clearly informed that authentication failed  

**Related Bug:** BUG-001  

---

## TC-03 Empty username field

**Priority:** Medium  

**Preconditions:**
- User is on the login page  

**Steps:**
1. Open the login page  
2. Leave the username field empty  
3. Enter password: `Password123`  
4. Click **Submit**

**Expected Result:**
- Login is not allowed  
- Error or validation message is displayed  
- User remains on the login page  

---

## TC-04 Invalid username format

**Priority:** Medium  

**Preconditions:**
- User is on the login page  

**Steps:**
1. Open the login page  
2. Enter an invalid username (e.g. `student@`)  
3. Enter password: `Password123`  
4. Click **Submit**

**Expected Result:**
- Login fails  
- Error message is displayed  
- User remains on the login page  


**Expected result:**  
- Login is not allowed  
- Validation message is displayed for incorrect email format (e.g. *"Please enter a valid email address"*)  
- User remains on the login page
