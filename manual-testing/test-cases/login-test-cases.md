# Login – Test Cases

## TC-01 Valid login
**Priority:** High  

**Preconditions:**  
- User account exists: `testuser@example.com` / `ValidPassword123`

**Steps:**  
1. Open the login page  
2. Enter email: `testuser@example.com`  
3. Enter password: `ValidPassword123`  
4. Click **Login**

**Expected result:**  
- User is successfully authenticated  
- User is redirected to the **Dashboard** page  
- Dashboard loads without errors

---

## TC-02 Invalid password
**Priority:** High  

**Preconditions:**  
- User account exists: `testuser@example.com`

**Steps:**  
1. Open the login page  
2. Enter email: `testuser@example.com`  
3. Enter invalid password: `WrongPassword`  
4. Click **Login**

**Expected result:**  
- Login fails  
- Error message is displayed, e.g. *"Invalid email or password"*  
- User remains on the login page  
- Password field may be cleared (depending on application behavior)

---

## TC-03 Empty email field
**Priority:** Medium  

**Preconditions:**  
- User is on the login page  
- Valid password exists: `ValidPassword123`

**Steps:**  
1. Open the login page  
2. Leave the email field empty  
3. Enter password: `ValidPassword123`  
4. Click **Login**

**Expected result:**  
- Login is not allowed  
- Validation message is displayed for the email field (e.g. *"Email is required"*)  
- User remains on the login page

---

## TC-04 Invalid email format
**Priority:** Medium  

**Preconditions:**  
- User is on the login page  
- Valid password exists: `ValidPassword123`

**Steps:**  
1. Open the login page  
2. Enter an invalid email format, e.g. `testuser@`  
3. Enter password: `ValidPassword123`  
4. Click **Login**

**Expected result:**  
- Login is not allowed  
- Validation message is displayed for incorrect email format (e.g. *"Please enter a valid email address"*)  
- User remains on the login page
